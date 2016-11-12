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
		let allowed = NSMutableCharacterSet.alphanumeric()
		allowed.addCharacters(in: unreserved)
		return addingPercentEncoding(withAllowedCharacters: allowed as CharacterSet)
	}
}
