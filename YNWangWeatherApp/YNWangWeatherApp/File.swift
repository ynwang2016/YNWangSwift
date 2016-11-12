//
//  File.swift
//  YNWangWeatherApp
//
//  Created by ynwang on 16/11/8.
//  Copyright © 2016年 ynwang. All rights reserved.
//

import Foundation

//1.swift全局常量
let SCREEN_HEIGHT = UIScreen.main.bounds.height
let SCREEN_WIDTH = UIScreen.main.bounds.width
let FIT_WIDTH = UIScreen.main.bounds.size.width / 375
let FIT_HEIGHT = UIScreen.main.bounds.size.height / 667
let FONT_30 = UIFont.systemFont(ofSize: 15)
let FONT_60 = UIFont.systemFont(ofSize: 30)
let FONT_140 = UIFont.systemFont(ofSize: 70)


//系统版本
let systemVersion = (UIDevice.current.systemVersion as String)


//2.定义函数获取全局常量
func x(_ object: UIView) ->CGFloat {
	return object.frame.origin.x
}

func y(_ object: UIView) -> CGFloat {
	return object.frame.origin.y
}

func width(_ object: UIView) -> CGFloat {
	return object.frame.size.width
}

func height(_ object: UIView) -> CGFloat {
	return object.frame.size.height
}

func centerX(_ object: UIView) -> CGFloat {
	return object.center.x
}

func centerY(_ object: UIView) -> CGFloat {
	return object.center.y
}


//RGB
func RGB(_ r:CGFloat,g:CGFloat,b:CGFloat)->UIColor{
	
 return UIColor(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: 1)
	
}

