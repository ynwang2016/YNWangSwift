//
//  YNWeatherCell.swift
//  YNWangWeatherApp
//
//  Created by ynwang on 16/11/2.
//  Copyright © 2016年 ynwang. All rights reserved.
//

import UIKit

class YNWeatherCell: UITableViewCell {

	var localWeatherLabel: UILabel!
	var weatherLabel: UILabel!
	var temperatureLabel: UILabel!
	var timeLabel: UILabel!
	var todayLabel: UILabel!
	
	
	
    override func awakeFromNib() {
        super.awakeFromNib()

	}
	
	override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)
		
		//初始化UI
		setUpViews()
		
	
		
	}
	
	func setUpViews() {
		//1.当地温度
		//获取屏幕大小
		let screenBounds:CGRect = UIScreen.mainScreen().bounds
		print(screenBounds) //iPhone6输出：（0.0,0.0,375.0,667.0）
		
		//获取屏幕大小（不包括状态栏高度）
//		let viewBounds:CGRect = UIScreen.mainScreen().applicationFrame
//		print(viewBounds) //iPhone6输出：（0.0,20.0,375.0,647.0）
		self.backgroundColor = UIColor.blueColor()
		localWeatherLabel = UILabel(frame:CGRect(x:100, y: 50, width: 200, height:50))
		localWeatherLabel.center = CGPointMake(screenBounds.width / 2, localWeatherLabel.center.y)
		localWeatherLabel?.text = "当地温度"
		localWeatherLabel?.textAlignment = NSTextAlignment.Center
		localWeatherLabel?.textColor = UIColor.whiteColor()
		localWeatherLabel?.font = UIFont.systemFontOfSize(30)
		self.contentView.addSubview(localWeatherLabel!)
		
		//2.大部晴朗
		weatherLabel = UILabel(frame:CGRect(x: 0, y: CGRectGetMaxY(localWeatherLabel!.frame) + 20, width: 100, height:  30))
		weatherLabel?.center = CGPointMake((localWeatherLabel?.center.x)!, (weatherLabel?.center.y)!)
		weatherLabel?.text = "大部晴朗"
		weatherLabel?.font = UIFont.systemFontOfSize(15)
		weatherLabel?.textAlignment = NSTextAlignment.Center
		weatherLabel?.textColor = UIColor.whiteColor()
		self.contentView.addSubview(weatherLabel!)
		
		//3.数字温度
		temperatureLabel = UILabel(frame:CGRect(x: 0, y: CGRectGetMaxY((weatherLabel?.frame)!), width: 90, height: 90))
		temperatureLabel?.center = CGPointMake((weatherLabel?.center.x)!, (temperatureLabel?.center.y)!)
		temperatureLabel?.text = "19"
		temperatureLabel?.textColor = UIColor.whiteColor()
		temperatureLabel?.font = UIFont.systemFontOfSize(70)
		temperatureLabel?.textAlignment = NSTextAlignment.Center
		self.contentView.addSubview(temperatureLabel!)
		
		//4.星期天
		timeLabel = UILabel(frame:CGRect(x: 10, y: CGRectGetMaxY(temperatureLabel!.frame) + 50, width:50, height:30))
		timeLabel?.textColor = UIColor.whiteColor()
		timeLabel?.font = UIFont.systemFontOfSize(15)
		timeLabel?.textAlignment = NSTextAlignment.Center
		timeLabel?.text = "星期三"
		self.contentView.addSubview(timeLabel!)
		
		//5.今天
		todayLabel = UILabel(frame:CGRect(x: CGRectGetMaxX(timeLabel!.frame) + 10, y: timeLabel!.frame.origin.y, width:40, height:30))
		todayLabel?.textColor = UIColor.whiteColor()
		todayLabel?.font = UIFont.systemFontOfSize(15)
		todayLabel?.textAlignment = NSTextAlignment.Center
		todayLabel?.text = "今天"
		self.contentView.addSubview(todayLabel!)
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
