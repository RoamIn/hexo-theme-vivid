---
title: 赋能中后台建设 ice
date: 2018-12-20 12:00:00
tags:
    - ice
    - alibaba
categories: test

pho: https://alpha.wallhaven.cc/wallpapers/thumb/small/th-476624.jpg
---

<p align="center">
  <a href="https://alibaba.github.io/ice">
    <img alt="ICE" src="https://gw.alicdn.com/tfs/TB1FEW2nfDH8KJjy1XcXXcpdXXa-487-132.svg" width="200">
  </a>
</p>
<p align="center">赋能企业中后台建设</p>
<p align="center">
  <a href="https://github.com/alibaba/ice/blob/master/LICENSE"><img src="https://img.shields.io/badge/lisense-MIT-brightgreen.svg"></a>
</p>

## 简介

基于海量高质量可复用区块，通过 GUI 工具快速搭建的一套中后台模板。

![ice-design-pro](https://img.alicdn.com/tfs/TB1V5iGnDnI8KJjy0FfXXcdoVXa-8057-4508.png)

## 特性

* 专业的设计支持: [ICE Design](https://alibaba.github.io/ice/design.html)
* 成熟的基础组件: [ICE Component](https://alibaba.github.io/ice/#/component/button)
* 丰富的业务模块: [ICE Block](https://alibaba.github.io/ice/#/block)
* 完善的开发工具: [iceworks](https://alibaba.github.io/ice/#/iceworks)

## 功能

> 按照 Dashboard 综合页和 Block 分类进行展示

```
- Dashboard
- 图表页
  - 图表列表
- 表格页
  - 基础表格
  - 展示型表格
  - 表格列表
- 列表页
  - 文章列表
  - 卡片列表
  - 图文列表
- 内容页
  - 基础详情页
  - 条款协议页
  - 进度展示页
- 结果页
  - 成功
  - 失败
- 异常
  - 403 无权限
  - 404 找不到
  - 500 服务器出错
  - 内容为空
```

## 目录结构

```
ice-design-pro
├── dist        // 打包资源
├── mock        // 模拟数据
├── public      // 静态资源
├── src
│   ├── components  // 公共组件
│   ├── layouts     // 通用布局
│   ├── pages       // 页面
│   ├── index.js    // 应用入口
│   ├── navs.js     // 导航配置
│   └── routes.jsx  // 路由配置
├── tests           // 测试
├── .editorconfig    // 代码风格配置
├── .eslintignore    // eslint 忽略目录配置
├── .eslintrc        // eslint 配置
├── .generator.json  // 区块配置
├── package.json     // package-lock.json
├── package.json     // package.json
└── README.md        // 项目说明
```

## Attributes

| 参数      | 说明    | 类型      | 可选值       | 默认值   |
|---------- |-------- |---------- |-------------  |-------- |
| header | 设置 header，也可以通过 `slot#header` 传入 DOM | string| — | — |
| body-style | 设置 body 的样式| object| — | { padding: '20px' } |

## 高亮测试

```css CSS
// table
> table {
    margin: 20px 0;
    width: 100%;
    max-width: 100%;
    font-size: 14px;
    border-collapse: collapse;
    border: none;
    border-spacing: 0;

    >tbody {
        > tr:nth-of-type(odd) {
            background-color: #f9f9f9;
        }
    }

    td,
    th {
        padding: 8px;
        border: 1px solid #ddd;
        vertical-align: middle;
        word-break: break-word;
    }

    th {
        font-weight: 700;
        padding-bottom: 10px;
        border-bottom-width: 2px;
    }
}
```

```js JavaScript
// test commend
/*
* test commend
*/
utils = {
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
```

## 使用

1. (推荐) GUI 工具使用: 下载 [iceworks](https://alibaba.github.io/ice/#/iceworks)

2. Cli 命令使用:

```shell
# comment test
$ npm start      // 启动预览服务器
$ npm run build  // 构建 dist
```
