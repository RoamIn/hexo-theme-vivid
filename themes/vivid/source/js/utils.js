Vivid = {};

Vivid.utils = {
	hasClass: function (ele, value) {
		let curValue = ele.className;

		return (' ' + curValue + ' ').indexOf(' ' + value + ' ') > -1;
	},
	addClass: function (ele, value) {
		let curValue = ele.className;

		if (!this.hasClass(ele, value)) {
			ele.className = curValue.trim() + ' ' + value;
		}
	},
	removeClass: function (ele, value) {
		let curValue = ele.className;

		if (this.hasClass(ele, value)) {
			curValue = (' ' + curValue + ' ').replace(' ' + value + ' ', ' ');
			ele.className = curValue.trim();
		}
	},
	toggleClass: function (ele, value, stateVal) {
		let curValue = ele.className;

		if (typeof stateVal === 'boolean') {
			return stateVal ? this.addClass(ele, value) : this.removeClass(ele, value);
		}

		if (this.hasClass(ele, value)) {
			return this.removeClass(ele, value)
		}

		return this.addClass(ele, value);
	}
};