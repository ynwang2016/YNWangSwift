//
//  File.swift
//  YNWangWeatherApp
//
//  Created by ynwang on 16/11/8.
//  Copyright © 2016年 ynwang. All rights reserved.
//

import Foundation

//1.swift全局常量
let SCREEN_HEIGHT = UIScreen.mainScreen().bounds.height
let SCREEN_WIDTH = UIScreen.mainScreen().bounds.width
let FIT_WIDTH = UIScreen.mainScreen().bounds.size.width / 375
let FIT_HEIGHT = UIScreen.mainScreen().bounds.size.height / 667
let FONT_30 = UIFont.systemFontOfSize(15)
let FONT_60 = UIFont.systemFontOfSize(30)
let FONT_140 = UIFont.systemFontOfSize(70)

//2.定义函数获取全局常量
func x(object: UIView) ->CGFloat {
	return object.frame.origin.x
}

func y(object: UIView) -> CGFloat {
	return object.frame.origin.y
}

func width(object: UIView) -> CGFloat {
	return object.frame.size.width
}

func height(object: UIView) -> CGFloat {
	return object.frame.size.height
}

func centerX(object: UIView) -> CGFloat {
	return object.center.x
}

func centerY(object: UIView) -> CGFloat {
	return object.center.y
}

