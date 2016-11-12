//
//  ViewController.swift
//  YNWangWeatherApp
//
//  Created by ynwang on 16/11/2.
//  Copyright © 2016年 ynwang. All rights reserved.
//

import UIKit
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

	var list : UITableView!
	var listArray : NSMutableArray = []
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		list = UITableView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height), style: UITableViewStyle.plain)
		self.view.addSubview(list)
		list.delegate = self
		list.dataSource = self
		
		let cityurl = "合肥"
		let provinceurl = "安徽省"
		
		let param : NSDictionary = ["key" : "109372171b10c",
			"city" : cityurl,
			"province" : provinceurl]
		
		//请求天气数据
		requestData(param: param)
		
		}
	
	/**
	请求天气数据
	
	- parameter param: 存放数据的字典
	*/
	func requestData(param: NSDictionary) {
		let afn = AFHTTPRequestOperationManager()
		afn.get("http://apicloud.mob.com/v1/weather/query", parameters: param, success: { (oper, data) -> Void in
			
			//			let newdata = try? NSJSONSerialization.dataWithJSONObject(data, options: NSJSONWritingOptions.PrettyPrinted)
			//			let strjson = NSString(data:newdata!, encoding: NSUTF8StringEncoding)
			
			guard let dic = (data as? NSDictionary) else {
				return
			}
			guard let retcode = dic.object(forKey: "retCode") as? NSString else {
				return
			}
			print(data)
			if retcode.intValue == 200 {//成功
				if let result = dic["result"] as? NSArray {
				 if	let dict = result[0] as? NSDictionary  {
					if let future = dict.object(forKey: "future") as? NSArray{
						
						for weather in future {
							if let week = (weather as? NSDictionary)?.object(forKey: "week") as? String {
								if let temperature = (weather as? NSDictionary)?.object(forKey: "temperature") as? String {
									if let dayTime = (weather as? NSDictionary)?.object(forKey: "dayTime") as? String {
										let obj = WeatherObject(week: week, temperature: temperature, dayTime: dayTime)
										self.listArray.add(obj)
									}
								}
							}
						}
						
						self.list.reloadData()
					}
					}
				}
			}
		}) { (opeation, error) -> Void in
			print(error)
		}
	}
	
	/**
	tableViewDelagete
	
	- parameter tableView: <#tableView description#>
	- parameter indexPath: <#indexPath description#>
	
	- returns: <#return value description#>
	*/
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

		if (indexPath as NSIndexPath).section == 0 {
			let indentifer = "cell1"
			var cell: YNWeatherCell! = (tableView.dequeueReusableCell(withIdentifier: indentifer) as? YNWeatherCell)
			if cell == nil {
                cell = YNWeatherCell(style: .default, reuseIdentifier: indentifer)
			}
	
			return cell
		}
		
		else if (indexPath as NSIndexPath).section == 1 {
			let indentifier = "cell3"
			var cell: YNWeatherCell2! = (tableView.dequeueReusableCell(withIdentifier: indentifier) as? YNWeatherCell2)
			if cell == nil {
                cell = YNWeatherCell2(style:  .default, reuseIdentifier: indentifier)
			}
			
			return cell
		}
		
		let indentifer = "cell2"
		var cell: YNWeatherCell1! = (tableView.dequeueReusableCell(withIdentifier: indentifer) as? YNWeatherCell1)
		if cell == nil {
			cell = YNWeatherCell1(style:  .default, reuseIdentifier:  indentifer)
		}
		
		let weather : WeatherObject = self.listArray[(indexPath as NSIndexPath).row] as! WeatherObject
		cell.weekLabel.text = weather.week
		cell.temLabel.text = weather.temperature
		
		switch weather.dayTime {
		case "晴":
			cell.imageIcon.image = UIImage(named: "sunny")
		case "小雨":
			cell.imageIcon.image = UIImage(named: "rain")
		case "多云":
			cell.imageIcon.image = UIImage(named: "yun")
		case "阴天":
			cell.imageIcon.image = UIImage(named: "yintian")
		default:
			cell.imageIcon.image = UIImage(named: "sunny")
		}
			return cell
	}
	
	func numberOfSections(in tableView: UITableView) -> Int {
		return 3
	}
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		
		if section == 0 || section == 1{
			return 1
		}
		return self.listArray.count
	}
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		if (indexPath as NSIndexPath).section == 0 {
			return 320
		}
		else if (indexPath as NSIndexPath).section == 1{
			return 80
		}
		
		return 44
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

