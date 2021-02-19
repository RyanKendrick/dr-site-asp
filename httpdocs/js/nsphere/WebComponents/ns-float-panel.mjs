/* Last updated: 2021Feb09.
 *
 * Attributes
 * show: (true,false) whether the modal is shown or not.
 * no-unfocus-hide: (when exists) modal will not be hidden when click occurs outside modal.
 * onshow: javascrpt to execute when modal is shown.
 * onhide: javascript to execute when modal is hidden.
 * onload: runs javascript when component is connected to the DOM
 *
 * Events
 * panel-show: fired when modal is shown. Bubbles.
 * panel-hide: fired when modal is hidden. Bubbles.
 *
 * Other
 * "data-panel-hide-btn" attribute: add to any element within the modal to hide the modal when the element is clicked.
 *
 * Styling
 * - The "blanket" can be styled by styling this custom element itself.
 * - A single child element is expected in the slot. The "panel" will have the CSS class "show" added to its class list on open and removed on close so you can do transitions.
 */

import utils from './ns-webComponentUtils.mjs';

var style = `
	<style>
		:host{
			--fadeTime: .15s;
			-display: contents !important;
		}
		
		:host {
			background-color: transparent;
			position: fixed;
			top: 0;
			bottom: 0;
			left: 0;
			right: 0;
			z-index: 2000000000;
			align-items: center;
			justify-content: center;
			padding: 36px;
			display: flex;
			pointer-events:none;
			transition: background-color var(--fadeTime);
		}

		@media(max-width: 760px) {
			:host {
				padding: 12px;
			}
		}

		:host([show='true']) {
			pointer-events:all;
			background-color: rgba(0, 0, 0, .4);
		}
	</style>
`;

var template = `
	<slot></slot>
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

class NsFloatPanel extends HTMLElement {
	constructor() {
		super();

		const shadowRoot = this.attachShadow({ mode: 'open' });
		shadowRoot.innerHTML = style + template;

		this._slot = this.shadowRoot.querySelector('slot');
	}

	//Called when element becomes part of the DOM.
	connectedCallback() {
		if (!this._setup) {

			this.ensureGlobalCss();

			var blanket = this;
			blanket.addEventListener(
				'click',
				(e) => {

					var outsideClicked = (
						e.target == blanket &&
						!utils.valuelessAttrToBool(this, 'no-unfocus-hide')
					);

					var closeBtnClicked = e.target.hasAttribute('data-panel-hide-btn');

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
			//iOS devices report window.innerWidth incorrectly larger and their scrollbars overlap the body anyway so in this case return zero.
			var iOS = /iPad|iPhone|iPod/.test(navigator.userAgent) && !window.MSStream;
			if (iOS) {
				return 0;
			}

			var outer = window.innerWidth;
			var inner = document.documentElement.clientWidth;

			return outer - inner;
		}
	}

	_modalSwitchState(makeVisible) {

		var modal = this._slot.assignedElements()[0];

		if (makeVisible) {
			this.ensureBodyScroll(false);
			modal.classList.add('show');
			this.fireAttributeEvent('onshow');
			utils.fireEvent(this, 'panel-show');
		}
		else {

			//Make sure scrollbar is not shown or hide events fired until after CSS transitions complete.
			var endFunc = () => {
				this.ensureBodyScroll(true);
				this.fireAttributeEvent('onhide');
				utils.fireEvent(this, 'panel-hide');
			}

			//Todo: update this to check for transition. If there is no transition then the "transitionend" event will never fire.
			modal.addEventListener("transitionend",
				endFunc,
				{ once: true }
			);
			modal.classList.remove('show');
		}
	}

	//Properties
	get show() {
		return utils.valuelessAttrToBool(this, 'show');
	}

	set show(val) {
		this.setAttribute('show', val ? 'true' : 'false');
	}

	//Attribute changes.
	static get observedAttributes() {
		return [
			'show'
		];
	}

	attributeChangedCallback(name, oldVal, newVal) {
		switch (name) {
			case 'show':
				var show = utils.valuelessAttrToBool(this, 'show');
				this._modalSwitchState(show);
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
	customElements.define("ns-float-panel", NsFloatPanel);
})();