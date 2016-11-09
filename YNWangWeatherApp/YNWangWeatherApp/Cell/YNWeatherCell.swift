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
	let LABELHEIGHT: CGFloat = 30.0
	let X: CGFloat = 100.0
	
	
	
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
		self.backgroundColor = UIColor.blueColor()
		localWeatherLabel = UILabel(frame:CGRect(x:X, y: X / 2, width: X * 2, height:X / 2))
		localWeatherLabel.center = CGPointMake(SCREEN_WIDTH / 2, localWeatherLabel.center.y)
		localWeatherLabel?.text = "当地温度"
		localWeatherLabel?.textAlignment = NSTextAlignment.Center
		localWeatherLabel?.textColor = UIColor.whiteColor()
		localWeatherLabel?.font = FONT_60
		self.contentView.addSubview(localWeatherLabel!)
		
		//2.大部晴朗
		weatherLabel = UILabel(frame:CGRect(x: 0, y: CGRectGetMaxY(localWeatherLabel!.frame) + 20, width: X, height:  LABELHEIGHT))
		weatherLabel?.center = CGPointMake((localWeatherLabel?.center.x)!, (weatherLabel?.center.y)!)
		weatherLabel?.text = "大部晴朗"
		weatherLabel?.font = FONT_30
		weatherLabel?.textAlignment = NSTextAlignment.Center
		weatherLabel?.textColor = UIColor.whiteColor()
		self.contentView.addSubview(weatherLabel!)
		
		//3.数字温度
		temperatureLabel = UILabel(frame:CGRect(x: 0, y: CGRectGetMaxY((weatherLabel?.frame)!), width: 90, height: 90))
		temperatureLabel?.center = CGPointMake((weatherLabel?.center.x)!, (temperatureLabel?.center.y)!)
		temperatureLabel?.text = "19"
		temperatureLabel?.textColor = UIColor.whiteColor()
		temperatureLabel?.font = FONT_140
		temperatureLabel?.textAlignment = NSTextAlignment.Center
		self.contentView.addSubview(temperatureLabel!)
		
		//4.星期天
		timeLabel = UILabel(frame:CGRect(x: 10, y: CGRectGetMaxY(temperatureLabel!.frame) + X / 2, width: X / 2, height:LABELHEIGHT))
		timeLabel?.textColor = UIColor.whiteColor()
		timeLabel?.font = FONT_30
		timeLabel?.textAlignment = NSTextAlignment.Center
		timeLabel?.text = "星期三"
		self.contentView.addSubview(timeLabel!)
		
		//5.今天
		todayLabel = UILabel(frame:CGRect(x: CGRectGetMaxX(timeLabel!.frame) + 10, y: timeLabel!.frame.origin.y, width:40, height:LABELHEIGHT))
		todayLabel?.textColor = UIColor.whiteColor()
		todayLabel?.font = FONT_30
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
