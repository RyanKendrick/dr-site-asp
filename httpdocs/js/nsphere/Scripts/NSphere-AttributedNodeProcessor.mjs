//Updated 2020Feb09.

var nodesToProcess = [];

(() => {
	if (isDocReady()) {
		onPageReady();
	}
	else {
		document.addEventListener('DOMContentLoaded', onPageReady);
	}
})();

function isDocReady() {
	var acceptedStates = ['complete', 'loaded', 'interactive'];
	return acceptedStates.some(c => c === document.readyState);
}

export function registerAttributeOnload(attributeName, func) {
	nodesToProcess.push(
		{
			attributeName: attributeName,
			func: func
		}
	);

	//For processing when page is ready.
	if (isDocReady()) {
		processAllMatches(attributeName, func);
	}
}

function processAllMatches(attributeName, func) {
	var elems = document.body.querySelectorAll(`[${attributeName}]`);
	elems.forEach(func);
}

function onPageReady() {
	nodesToProcess.forEach(c => {
		processAllMatches(c.attributeName, c.func);
	});

	//Setup observer.
	var observer = new MutationObserver((mutations) => {
		mutations.forEach((mutation) => {
			var nodesArr = Array.from(mutation.addedNodes);
			nodesArr
				.filter(c => c.nodeType === Node.ELEMENT_NODE)
				.forEach(onNodeAdded);
		});
	});
	observer.observe(document, { childList: true, subtree: true });
}

function onNodeAdded(node) {
	nodesToProcess.forEach(item => {
		var query = `[${item.attributeName}]`;
		var matches = node.querySelectorAll(query);
		Array.from(matches).forEach(match => {
			item.func(match);
		});
	});
}