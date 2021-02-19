//Updated 2020Mar12.

export default class NSphereForm {
	//Form input methods.
	static enforceHasValueAttribute(e) {
		var elem = e.target;
		var tags = [ "input", "select", "textarea" ];
		if (tags.contains(target.tagName.toLowerCase())) {
			//if (elem.hasAttribute("data-has-value")) {
			//	elem.setAttribute("data-has-value",elem.value!=="");
			//}//This si how this should work.

			NSphereForm.setTextHasValueAttribute(elem);
		}
	}

	static processMatchingNode(elem) {
		NSphereForm.setTextHasValueAttribute(elem);
			elem.addEventListener(
				'change',
				function () { NSphereForm.setTextHasValueAttribute(elem) }
			);
	}

	static nTextFirstFocus(elem) {
		if (!elem.hasAttribute('showInvalidMsg')) {
			elem.setAttribute('showInvalidMsg', '1');
		}
	}

	static setTextHasValueAttribute(elem) {
		//elem.setAttribute(
		//	"data-has-value",
		//	(elem.value === "") ? "false" : "true"
		//);

		var attrExists = elem.hasAttribute("data-has-value");
		var valueExists = elem.value !== "";
		if (valueExists) {
			if (!attrExists) {
				elem.setAttribute("data-has-value","");
			}
		} else {
			if (attrExists) {
				elem.removeAttribute("data-has-value");
			}
		}
	}

	//Form area methods.
	static getElementsIn(elemId) {
		var query = "input, select, checkbox, textarea, ns-autocomplete, ns-checkbox, ns-radio, ns-select, ns-text, ns-textarea";
		return document.getElementById(elemId).querySelectorAll(query);
	}

	static resetElementsIn(elemId) {
		var elems = NSphereForm.getElementsIn(elemId);
		elems.forEach(elem => {
			switch (elem.type.toLowerCase()) {
			case "text":
			case "password":
			case "textarea":
			case "hidden":
				elem.value = "";
				break;
			case "radio":
			case "checkbox":
				if (elem.checked) {
					elem.checked = false;
				}
				break;
			case "select-one":
			case "select-multi":
				elem.selectedIndex = -1;
				break;
			default:
				break;
			}

			if (elem.hasAttribute("data-invalid")) {
				elem.removeAttribute("data-invalid");
			}

			var evt = new CustomEvent('change');
			elem.dispatchEvent(evt);
		});
	}

	static validateElementsIn(elemId,callback) {
		var elems = NSphereForm.getElementsIn(elemId);

		var allValid = true;
		var firstInvalidFound=false;
		elems.forEach(elem => {
			if (!elem.checkValidity()) {
				if (!firstInvalidFound) {
					//elem.focus();//Causes ns-select to open. Decided to have it scroll the element into view instead (line below).
					elem.scrollIntoView({ behavior: "smooth", block: "center", inline: "nearest" });
					firstInvalidFound = true;
				}
				elem.setAttribute("data-invalid", "1");

				if (elem.hasAttribute("data-invalid-method")) {
					eval(elem.getAttribute("data-invalid-method"));
				}

				allValid = false;
			}
		});

		if (allValid && callback) {
			callback();
		}

		return allValid;
	}

	static enableValidationIn(elemId) {
		var elems = NSphereForm.getElementsIn(elemId);

		elems.forEach(elem => {
			if (elem.hasAttribute("data-buffer-required")) {
				elem.required = true;
			}
			if (elem.hasAttribute("data-buffer-pattern")) {
				elem.pattern = elem.getAttribute("data-buffer-pattern");
			}
		});
	}

	static disableValidationIn(elemId) {
		var elems = NSphereForm.getElementsIn(elemId);

		elems.forEach(elem => {
			if (elem.required && !elem.hasAttribute("data-buffer-required")) {
				elem.setAttribute("data-buffer-required", "");
			}
			elem.required = false;

			if (elem.pattern !== "" && !elem.hasAttribute("data-buffer-pattern")) {
				elem.setAttribute("data-buffer-pattern", elem.pattern);
			}
			elem.removeAttribute("pattern");
		});
	}
}

window.NSphereForm = NSphereForm;

import { registerAttributeOnload } from "./NSphere-AttributedNodeProcessor.mjs";

registerAttributeOnload(
	"data-nText",
	NSphereForm.processMatchingNode
);