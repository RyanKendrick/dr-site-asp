function showMarketMedia(showResidential) {
	document.getElementById("residentialMediaContainer").style.display = showResidential ? "" : "none";
	document.getElementById("commercialMediaContainer").style.display = !showResidential ? "" : "none";
}


//// slide-in images

//function debounce(func, wait = 20, immediate = true) {
//    var timeout;
//    return function() {
//        var context = this, args = arguments;
//        var later = function() {
//        timeout = null;
//        if (!immediate) func.apply(context, args);
//        };
//        var callNow = immediate && !timeout;
//        clearTimeout(timeout);
//        timeout = setTimeout(later, wait);
//        if (callNow) func.apply(context, args);
//    };
//};

//const sliderImages = document.querySelectorAll('.slide-in');

//function checkSlide() {
//    sliderImages.forEach(sliderImage => {
//        // half way through the image
//        const slideInAt = (window.scrollY + window.innerHeight) - sliderImage.height / 2;
//        // bottom of the image
//        const imageBottom = sliderImage.offsetTop + sliderImage.height;
//        const isHalfShown = slideInAt > sliderImage.offsetTop;
//        const isNotScrolledPast = window.scrollY < imageBottom;
//        if (isHalfShown && isNotScrolledPast) {
//        sliderImage.classList.add('active');
//        } else {
//        sliderImage.classList.remove('active');
//        }
//        console.log("yoyoyo");
//    });
//}

//window.addEventListener('scroll', debounce(checkSlide));


function setupRevealTransitions() {

	//Setup IntersectionObserver.
	var observer = new IntersectionObserver(
		checkReveal,
		{
			root: null,
			rootMargin: '0px',
			threshold: 0.5
		}
	);

	//Get elements to watch & apply observer.
	var elements = document.querySelectorAll('.slide-in');
	elements.forEach(c => observer.observe(c));
}

function checkReveal(changes, observer) {
	changes.forEach(change => {
		if (change.isIntersecting) {

			//Add CSS class to make element slide-in.
			var element = change.target;
			element.classList.add('active');

			//Remove observer.
			observer.unobserve(change.target);
		}
	});
}

//Start-up.
(() => {
	setupRevealTransitions();
})();


class SlidesRotator {

	constructor(containerId) {
		//Set properties.
		this.index = -1;
		this.panels = document.getElementById(containerId).children;

		//Start
		this.showNext();
	}

	incrementIndex() {
		this.index++;
		if (this.index >= this.panels.length) {
			this.index = 0;
		}
	}

	setVisiblity(index, isVisible) {
		this.panels[index].className = isVisible ? "show" : "";
	}

	showNext() {
		//Hide currently shown panel.
		if (this.index > -1) {
			this.setVisiblity(this.index, false);
		}

		//Show next panel.
		this.incrementIndex();
		this.setVisiblity(this.index, true);

		//Set timer for next rotation.
		setTimeout(this.showNext.bind(this), 4000);
	}
}

function openContactModal() {
	var modal = document.getElementById('contactModalNew');
	console.log('show',modal);
	modal.show = true;
}