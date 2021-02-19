class PageBanner extends HTMLElement {
    constructor() {
        super();
        this.innerHTML = /*css*/`
        
        <div class="banner">

            
        <div class="text-overlay">
			<h1></h1>
		</div>

        <div class="grid-overlay">

            <div class="white"></div>
            <div class="white"></div>
            <div class="white"></div>
            <div class="white"></div>
            <div class="darkest"></div>
            <div class="darker"></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>

            <div></div>
            <div class="dark"></div>
            <div></div>
            <div></div>
            <div class="dark"></div>
            <div class="darker"></div>
            <div class="darker"></div>
            <div></div>
            <div></div>
            <div></div>

            <div class="dark"></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div class="darker"></div>
            <div></div>
            <div class="dark"></div>
            <div></div>
            <div class="dark"></div>

            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div class="dark"></div>
            <div class="dark"></div>
            <div></div>
            <div></div>

            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div class="dark"></div>
            <div class="dark"></div>
            <div class="dark"></div>

            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div class="dark"></div>
            <div></div>
            <div></div>

            <div></div>
            <div></div>
            <div></div>
            <div class="dark"></div>
            <div></div>
            <div></div>
            <div></div>
            <div class="dark"></div>
            <div class="dark"></div>
            <div class="darker"></div>

            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div class="darker"></div>
            <div class="darker"></div>
            <div></div>
            <div class="dark"></div>
            <div class="dark"></div>
            <div></div>

        </div>   

        </div>

        <style>

            

        </style>
       
        `;
        
        this.h1 = this.querySelector('h1');



    }

    connectedCallback() {
	    this.switchGridCells();
    }

    static get observedAttributes() {
        return [
            'title',
            'img-src'
        ];
    }


    attributeChangedCallback(name, oldVal, newVal) {
        switch (name) {
            case 'title':
                this.h1.innerHTML = newVal;
                break;
            case 'img-src':
                this.style.setProperty('--banner-img',`url('${newVal}')`);
                break;
            }
    }

    //Grid animation methods.
    switchGridCells() {
        for (var i = 0; i < 3; i++) {
	        this.switchGridCell();
        }

        setTimeout(() => { this.switchGridCells() }, 100);
    }

    switchGridCell() {

        const cellCssClasses = ['', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'dark', 'dark', 'dark', 'darker', 'darker', 'darker', 'darkest'];
        var newCssClass = this.getRndArrayEntry(cellCssClasses);

        var cellElem = this.getRndGridCell();

        cellElem.className = newCssClass;
    }

    getRndArrayEntry(arr) {
        return arr[this.getRndNumBetween(0,arr.length-1)];
    }

    getRndGridCell() {
        var rndCellIndex = this.getRndNumBetween(5, 80);
        var cellElem = this.querySelector(`.grid-overlay div:nth-child(${rndCellIndex})`);
        return cellElem;
    }

    getRndNumBetween(minNum, maxNum) {
	    var delta = maxNum - minNum;
        var randomDelta = Math.floor(Math.random() * (delta + 1));//Add 1 to delta & floor instead of round to keep the odds of getting the first of last num the same as the other nums.
        return minNum + randomDelta;
    }

}

window.customElements.define('page-banner', PageBanner);