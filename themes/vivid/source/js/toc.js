var Toc = (function () {
	var $ = document.querySelector.bind(document)
	var toc = $('#post-toc');
	var header = $('header')

	if (!toc || !toc.children.length) {
		return {
			fixed: noop,
			actived: noop
		}
	}

	var bannerH = header.clientHeight,
			headerH = header.clientHeight,
			titles = $('#post-content').querySelectorAll('h1, h2, h3, h4, h5, h6');

	toc.querySelector('a[href="#' + titles[0].id + '"]').parentNode.classList.add('active');

	// Make every child shrink initially
	var tocChilds = toc.querySelectorAll('.post-toc-child');
	for (i = 0, len = tocChilds.length; i < len; i++) {
		tocChilds[i].classList.add('post-toc-shrink');
	}
	var firstChild =
			toc.querySelector('a[href="#' + titles[0].id + '"]')
					.nextElementSibling;
	if (firstChild) {
		firstChild.classList.add('post-toc-expand');
		firstChild.classList.remove('post-toc-shrink');
	}
	toc.classList.remove('post-toc-shrink');

	/**
	 * Handle toc active and expansion
	 * @param prevEle previous active li element
	 * @param currEle current active li element
	 */
	var handleTocActive = function (prevEle, currEle) {
		prevEle.classList.remove('active');
		currEle.classList.add('active');

		var siblingChilds = currEle.parentElement.querySelectorAll('.post-toc-child');
		for (j = 0, len1 = siblingChilds.length; j < len1; j++) {
			siblingChilds[j].classList.remove('post-toc-expand');
			siblingChilds[j].classList.add('post-toc-shrink');
		}
		var myChild = currEle.querySelector('.post-toc-child');
		if (myChild) {
			myChild.classList.remove('post-toc-shrink');
			myChild.classList.add('post-toc-expand');
		}
	};

	return {
		fixed: function (top) {
			top >= bannerH - headerH ? toc.classList.add('fixed') : toc.classList.remove('fixed');
		},
		actived: function (top) {
			for (i = 0, len = titles.length; i < len; i++) {
				if (top > offset(titles[i]).y - headerH - 5) {
					var prevListEle = toc.querySelector('li.active');
					var currListEle = toc.querySelector('a[href="#' + titles[i].id + '"]').parentNode;

					handleTocActive(prevListEle, currListEle);
				}
			}

			if (top < offset(titles[0]).y) {
				handleTocActive(
						toc.querySelector('li.active'),
						toc.querySelector('a[href="#' + titles[0].id + '"]').parentNode
				);
			}
		}
	}
})();

document.addEventListener('scroll', function () {
	var top = document.documentElement.scrollTop || document.body.scrollTop;

	Toc.fixed(top);
	Toc.actived(top);
}, false);
