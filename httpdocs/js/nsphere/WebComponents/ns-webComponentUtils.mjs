//Updated 2020Mar10.

export default class utils {

	static fireEvent(elem, eventName) {
		var newEvt = document.createEvent("Events");
		newEvt.initEvent(eventName, true, true);
		elem.dispatchEvent(newEvt);
	}

	static valuelessAttrToBool(elem,attrName) {
		if (!elem.hasAttribute(attrName)) {
			return false;
		}

		var val = elem.getAttribute(attrName).toLowerCase();
		return (
			val === null || val == true || val === 'true' || val===''
		);
	}

	static htmlReplaceWithObjectValues(html, dataObj) {
		html = html.replace(
			/\{\{([^\{\}]+)\}\}/ig,
			function (match, capture) {
				return dataObj[capture];
			}
		);
		return html;
	}

	static htmlToElements(html) {
		var template = document.createElement('template');
		template.innerHTML = html;

		var elem = template.content.firstElementChild; //Every other browser.
		if (elem) {
			return elem;
		}
		return template.content.querySelector("*"); //For MS Edge.
	}
}