const $menu = document.querySelector('#J_Menu');
const $menuSwitch = document.querySelector('#J_MenuSwitch');
const $backdrop = document.querySelector('#J_Backdrop');

function toggleMenu() {
	const toggleClassName = 'active';
	let menuClassName = $menu.className;

	if (menuClassName.indexOf(toggleClassName) > -1) {
		menuClassName = ' ' + menuClassName + ' ';
		menuClassName = menuClassName.replace(' ' + toggleClassName + ' ', ' ');
		$menu.className = menuClassName.trim();
	} else {
		$menu.className = $menu.className + ' ' + toggleClassName;
	}
}

$menuSwitch.addEventListener('click', function () {
	toggleMenu();
});

$backdrop.addEventListener('click', function () {
	toggleMenu();
});