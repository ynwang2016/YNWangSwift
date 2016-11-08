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
		list = UITableView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height), style: UITableViewStyle.Plain)
		self.view.addSubview(list)
		list.delegate = self
		list.dataSource = self
		
		let cityurl = "合肥"
		let provinceurl = "安徽省"
		
		let param : NSDictionary = ["key" : "109372171b10c",
			"city" : cityurl,
			"province" : provinceurl]
		
		//请求天气数据
		requestData(param)
		
		}
	
	/**
	请求天气数据
	
	- parameter param: 存放数据的字典
	*/
	func requestData(param: NSDictionary) {
		let afn = AFHTTPRequestOperationManager()
		afn.GET("http://apicloud.mob.com/v1/weather/query", parameters: param, success: { (oper, data) -> Void in
			
			//			let newdata = try? NSJSONSerialization.dataWithJSONObject(data, options: NSJSONWritingOptions.PrettyPrinted)
			//			let strjson = NSString(data:newdata!, encoding: NSUTF8StringEncoding)
			//print(strjson!)
			let retcode = data.objectForKey("retCode")
			if retcode?.intValue == 200 {//成功
				if let result = data["result"] {
				 if	let dict = result![0] {
					if let future = dict.objectForKey("future") as? NSArray{
						
						for weather in future {
							if let week = weather.objectForKey("week") as? String {
								if let temperature = weather.objectForKey("temperature") as? String {
									if let dayTime = weather.objectForKey("dayTime") as? String {
										let obj = WeatherObject(week: week, temperature: temperature, dayTime: dayTime)
										self.listArray.addObject(obj)
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
	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

		if indexPath.section == 0 {
			let indentifer = "cell1"
			var cell: YNWeatherCell! = (tableView.dequeueReusableCellWithIdentifier(indentifer) as? YNWeatherCell)
			if cell == nil {
                cell = YNWeatherCell(style: .Default, reuseIdentifier: indentifer)
			}
	
			return cell
		}
		
		else if indexPath.section == 1 {
			let indentifier = "cell3"
			var cell: YNWeatherCell2! = (tableView.dequeueReusableCellWithIdentifier(indentifier) as? YNWeatherCell2)
			if cell == nil {
                cell = YNWeatherCell2(style:  .Default, reuseIdentifier: indentifier)
			}
			
			return cell
		}
		
		let indentifer = "cell2"
		var cell: YNWeatherCell1! = (tableView.dequeueReusableCellWithIdentifier(indentifer) as? YNWeatherCell1)
		if cell == nil {
			cell = YNWeatherCell1(style:  .Default, reuseIdentifier:  indentifer)
		}
		
		let weather : WeatherObject = self.listArray[indexPath.row] as! WeatherObject
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
	
	func numberOfSectionsInTableView(tableView: UITableView) -> Int {
		return 3
	}
	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		
		if section == 0 || section == 1{
			return 1
		}
		return self.listArray.count
	}
	
	func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
		if indexPath.section == 0 {
			return 320
		}
		else if indexPath.section == 1{
			return 80
		}
		
		return 44
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

