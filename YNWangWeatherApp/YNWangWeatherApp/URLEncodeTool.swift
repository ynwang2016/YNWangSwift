//
//  URLEncodeTool.swift
//  YNWangWeatherApp
//
//  Created by ynwang on 16/11/3.
//  Copyright © 2016年 ynwang. All rights reserved.
//

import Foundation

extension String {
	func stringByAddingPercentEncodingForRFC3986() -> String? {
		let unreserved = "-._~/?"
		let allowed = NSMutableCharacterSet.alphanumericCharacterSet()
		allowed.addCharactersInString(unreserved)
		return stringByAddingPercentEncodingWithAllowedCharacters(allowed)
	}
}