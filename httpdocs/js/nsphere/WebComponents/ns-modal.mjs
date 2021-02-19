/* Last updated: 2020Aug11 - Update so when modal is open the browser's print feature will just print the modal contents.
 *
 * Attributes
 * show: (true,false) whether the modal is shown or not.
 * no-unfocus-hide: (when exists) modal will not be hidden when click occurs outside modal.
 * onshow: javascrpt to execute when modal is shown.
 * onhide: javascript to execute when modal is hidden.
 * onload: runs javascript when component is connected to the DOM
 *
 * Events
 * modal-show: fired when modal is shown. Bubbles.
 * modal-hide: fired when modal is hidden. Bubbles.
 *
 * Other
 * "data-modal-hide-btn" attribute: add to any element within the modal to hide the modal when the element is clicked.
 *
 * Styling
 * custom element's "style" and "class" attributes can be set and their settings will be passed-through to the modal.
 * custom element's "style", "className", and "classList" properties can be set and retrieved and will be passed-through to the modal. *
 * //Todo: remove "class" attribute since outside classes cannot affect styling inside the shadow DOM where the modal element is.
 *
 * CSS Recommendations
 * To prevent the slotted inner elements from appearing before the modals constructor is complete add the following style to a CSS stylesheet:
 * "ns-modal {display: none;}"
 * this will ensure the slotted inner elements will not be visible before the modal constructor is run. After the constructor is run the modal's own stylesheet will override this with it's own settings.
 */

import utils from './ns-webComponentUtils.mjs';

var style = `
	<style>
		:host{
			--fadeTime: .15s;
			display: contents !important;
		}
		
		.blanket {
			background-color: rgba(0, 0, 0, 0.2);
			position: fixed;
			top: 0;
			bottom: 0;
			left: -1000%;
			right: 1000%;
			z-index: 2000000000;
			align-items: center;
			justify-content: center;
			padding: 36px;
			display: flex;
			transition: background-color var(--fadeTime), left 0s var(--fadeTime), right 0s var(--fadeTime);
		}

		@media(max-width: 760px) {
			:host .blanket {
				padding: 12px;
			}
		}

		:host([show='true']) .blanket {
			left: 0;
			right: 0;
			background-color: rgba(0, 0, 0, .8);
			transition: background-color var(--fadeTime), left 0s 0s, right 0s 0s;
		}

		[modal] {
			color: #000;
			background: #fff;
			border-radius: 3px;
			margin-top: -40px;
			opacity: 0;
			-position: relative; /* position: relative prevents menu panels extens outside of modal 2020Aug11 */
			box-shadow: var(--basicBoxShadow);
			max-height:90vh;
			max-width:90vw;
			overflow:auto;
			transition: margin-top var(--fadeTime),opacity var(--fadeTime);
		}

		@media(min-width:600px) {
			[modal] {
				min-width: 500px;
			}
		}

		[modal].show {
			margin-top: 0;
			opacity: 1;
		}
		
		@media print {
			.blanket {
				padding:0 !important;
				background:#fff !important;

				position:absolute;

				top:100%; /* Since blanket is positioned relative to the body content and body content has been slid above the first page, this setting makes the top of the blanket 100% of the height of the body content from the top of the body content meaning that the top of this blanket is the bottom of the body content and therefore the top of the first print page. */
				width:100vw;
				bottom:auto !important;

				display:block;
			}

			[modal] {
				box-shadow: none !important;
				width: 100%;
				height:auto;
				min-height: auto;
				min-width: 100vw;
				max-height: 100%;/* do not use auto, it is invalid in this case and will not override the other class*/
				max-width: auto;
				overflow: visible !important;
			}
		}
	</style>
`;

var template = `
	<div class="blanket">
		<div modal>
			<slot></slot>
		</div>
	</div>
`;

var globalCss = `
	body[ns-modal-active]{
		overflow: hidden;
	}

	@media print {
		body[ns-modal-active]{
			position:absolute;
			bottom:100%; /* in print this is from the bottom of the first page, so this slides all body content above the first page */

			/* margin & padding zero make sure blanket can expand to full width of print page */
			margin:0;
			padding:0;
		}
	}
`;

class NsModal extends HTMLElement {
	constructor() {
		super();

		const shadowRoot = this.attachShadow({ mode: 'open' });
		shadowRoot.innerHTML = style + template;

		this._modal = this.shadowRoot.querySelector('[modal]');
	}

	//Called when element becomes part of the DOM.
	connectedCallback() {
		if (!this._setup) {

			this.ensureGlobalCss();

			var blanket = this.shadowRoot.querySelector('.blanket');
			blanket.addEventListener(
				'click',
				(e) => {

					var outsideClicked = (
						e.target == blanket &&
						!utils.valuelessAttrToBool(this, 'no-unfocus-hide')
					);

					var closeBtnClicked = e.target.hasAttribute('data-modal-hide-btn');

					if (outsideClicked || closeBtnClicked) {

						this.show = false;

						//If modal is in another modal make sure close button click does not close parent modal(s).
						if (closeBtnClicked) {
							e.stopPropagation();
						}
					}
				}
			);

			this._setup = true;
		}
	}

	//Creates global CSS styles for affecting the page's body element when the modal is displayed or printed.
	ensureGlobalCss() {
		if (!window.nspherePanelModalGlobalCssSet) {
			const s = document.createElement('style');
			s.textContent = globalCss;
			document.body.appendChild(s, 'beforeend');

			window.nspherePanelModalGlobalCssSet = true;
		}
	}

	//Enables/disables body scrolling based of if modal is displayed. Will hide scrollbar and add same sized right margin to prevent the page from shifting when body scroll is disabled.
	ensureBodyScroll(enabled) {

		var body = document.body;

		//Make sure only 1 modal had control of body scroll (in case there is a modal inside a modal).
		if (body.modalDisablingScroll && body.modalDisablingScroll != this) {
			return;
		}

		var style = body.style;

		if (enabled) {
			if (body.preModalStyleMarginRight) {
				style.marginRight = body.preModalStyleMarginRight;
			}
			else {
				style.removeProperty('margin-right');
			}

			body.removeAttribute('ns-modal-active');

			body.modalDisablingScroll = null;
		}
		else {
			if (style.marginRight) {
				body.preModalStyleMarginRight = style.marginRight;
			}

			//Increase body's right margin to compensate for hiding scrollbar.
			var existingBodyMargin = window.getComputedStyle(body).marginRight;
			var newMarginRight = parseInt(existingBodyMargin) + getScrollbarWidth();
			style.marginRight = `${newMarginRight}px`;

			//Hide scrollbar.
			body.setAttribute('ns-modal-active', '');

			//Set this element as the modal controlling the body scroll so that embedded modals do not try to perform these tasks on the body scroll as well.
			body.modalDisablingScroll = this;
		}

		function getScrollbarWidth() {
			var outer = window.innerWidth;
			var inner = document.documentElement.clientWidth;
			return outer - inner;
		}
	}

	_modalSwitchState(makeVisible) {
		if (makeVisible) {
			this.ensureBodyScroll(false);
			this._modal.classList.add('show');
			this.fireAttributeEvent('onshow');
			utils.fireEvent(this, 'modal-show');
		}
		else {
			this._modal.classList.remove('show');

			//Make sure scrollbar is not shown or hide events fired until after CSS transitions complete.
			var endFunc = () => {
				this.ensureBodyScroll(true);
				this.fireAttributeEvent('onhide');
				utils.fireEvent(this, 'modal-hide');
			}

			//Todo: update this to check for transition. If there is no transition then the "transitionend" event will never fire.
			this._modal.addEventListener("transitionend",
				endFunc,
				{ once: true }
			);
		}
	}

	//Properties
	get show() {
		return utils.valuelessAttrToBool(this, 'show');
	}

	set show(val) {
		this.setAttribute('show', val ? 'true' : 'false');
	}

	get style() {
		return this._modal.style;
	}

	set style(val) {
		this._modal.style = val;
	}

	get classList() {
		return this._modal.classList;
	}

	set classList(val) {
		this._modal.classList = val;
	}

	//Attribute changes.
	static get observedAttributes() {
		return [
			'show',
			'style'
		];
	}

	attributeChangedCallback(name, oldVal, newVal) {
		switch (name) {
			case 'show':
				var show = utils.valuelessAttrToBool(this, 'show');
				this._modalSwitchState(show);
				break;

			case 'style':
				this.style = newVal;
				break;
		}
	}

	fireAttributeEvent(attrName) {
		var val = this.getAttribute(attrName);
		if (val) {
			eval(val);
		}
	}
}

(() => {
	customElements.define("ns-modal", NsModal);
})();