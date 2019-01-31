const THRESHOLD = 50;
const $backToTop = document.querySelector('#J_BackToTop');
const $backToTopNum = $backToTop.querySelector('.num');

function getContentVisibilityHeight() {
	const documentHeight = document.documentElement.offsetHeight;
	const windowHeight = window.innerHeight;
	const contentVisibilityHeight = documentHeight - windowHeight;

	return contentVisibilityHeight;
}


function bind () {
    window.addEventListener('scroll', function () {
        const THRESHOLD = 50;
        const scrollTop = window.pageYOffset;
        const contentVisibilityHeight = getContentVisibilityHeight();
        const scrollPercent = (scrollTop) / (contentVisibilityHeight);
        const scrollPercentRounded = Math.round(scrollPercent * 100);
        const scrollPercentMaxed = (scrollPercentRounded > 100) ? 100 : scrollPercentRounded;

        Vivid.utils.toggleClass($backToTop, 'active', scrollTop > THRESHOLD);

        $backToTopNum.innerHTML = scrollPercentMaxed;
    });

    $backToTop.addEventListener('click', function () {
        let timer = null;

        cancelAnimationFrame(timer);
        timer = requestAnimationFrame(function fn() {
            const scrollTop = window.pageYOffset;
            const halfTop = scrollTop * 0.8

            if (scrollTop > 0) {
                window.scrollTo(0, halfTop > 5 ? halfTop : 0);

                timer = requestAnimationFrame(fn);
            } else {
                cancelAnimationFrame(timer);
            }
        });
    });

}
