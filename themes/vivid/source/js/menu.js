const $menu = document.querySelector('#J_Menu');
const $menuSwitch = document.querySelector('#J_MenuSwitch');
const $backdrop = document.querySelector('#J_Backdrop');

$menuSwitch.addEventListener('click', function () {
	Vivid.utils.toggleClass($menu, 'active');
});

$backdrop.addEventListener('click', function () {
	Vivid.utils.toggleClass($menu, 'active');
});