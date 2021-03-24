class MainNav extends HTMLElement {
    constructor() {
        super();
        this.innerHTML = /*css*/ `

        <div class="navbar-wrapper">

            <div class="lower-left-nav-section">
                <div class="navbar-wrapper-mid">
                
                    A Better Way to Order <b>Real Estate Media</b>
                
                </div>
    
                
                
            
            </div>
            
        </div>
            

        <style>

        .navbar-wrapper {
            font-family: Helvetica;
			width: 240px;
			position: relative;
			padding-left: 80px;
        }

        .navbar-wrapper-mid {
            left: 0px;
            left: 0px;
            font-size: 19px;
            color: black;
			position: absolute;
			top: 20px;
			left: 80px;
			white-space: nowrap;
			z-index:100;
        }

        .navbar-wrapper-links {
            display: inline-flex;
            flex-direction: column;
            left: 0px;
            padding: 100px 0 0 0;   
        }

        .navbar-wrapper-links > a {
            text-decoration: none;
            color: black;
            padding: 12px 0;
            position: relative;
        }

.selected{
z-index:-10;
}
        
        /* Pseudo-element requires '::' */

        .selected {
			font-weight:bold;
            z-index: -10;
        }

        .selected::before {
            display: block;
            z-index: -10;
            content: '';
            font-weight: bold;
            text-transform: uppercase;
            background-image: url(../assets/Triangle.svg);
            background-position: 100% 50%;
            background-repeat: no-repeat;
            background-size: contain;
            position: absolute;
            right: 50%;
            top: 50%;
            transform: translateY(-50%) translateZ(-100px);
            height: 300px;
            width: 600px;
        }


        </style>

        <script>

// Get the modal
var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on the button, open the modal
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
  

</script>

        `;


    }
    

    


    // Makes the "active-link" attribute available to the following functions etc
    static get observedAttributes() {
        return ["active-link"];
    }  
    
    attributeChangedCallback(attributeName, oldValue, newValue) {
        
        if (oldValue) {
            // funtion sets element class
            this.setElementClass(oldValue, "");
        }  
        switch(attributeName) {
            case "active-link":
                if (newValue) {
                    // function set element class
                    this.setElementClass(newValue, "selected");
                }  
                break;
        }
    }

    // Function for setting the element class for reusability

    setElementClass(elementId, className) {
        let linkElement = this.querySelector(`#${elementId}`);
        linkElement.className = className;
    }


    
}

window.customElements.define('main-nav', MainNav);