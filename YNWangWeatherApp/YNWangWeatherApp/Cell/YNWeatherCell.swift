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
//		let helloLabel: UILabel
//		helloLabel.text = "label"
//        self.contentView.addSubview(helloLabel)
//		helloLabel.textColor = UIColor.brown;
//		helloLabel.font = FONT_30
//		helloLabel.snp.makeConstraints { (make) -> Void in
//			make.width.height.equalTo(50)
//			make.center.equalTo(self.view)
//		}
		
		//1.当地温度
		self.backgroundColor = UIColor.blue
		localWeatherLabel = UILabel(frame:CGRect(x:X, y: X / 2, width: X * 2, height:X / 2))
		localWeatherLabel.center = CGPoint(x: SCREEN_WIDTH / 2, y: localWeatherLabel.center.y)
		localWeatherLabel?.text = "当地温度"
		localWeatherLabel?.textAlignment = NSTextAlignment.center
		localWeatherLabel?.textColor = UIColor.white
		localWeatherLabel?.font = FONT_60
		self.contentView.addSubview(localWeatherLabel!)
		
		//2.大部晴朗
		weatherLabel = UILabel(frame:CGRect(x: 0, y: localWeatherLabel!.frame.maxY + 20, width: X, height:  LABELHEIGHT))
		weatherLabel?.center = CGPoint(x: (localWeatherLabel?.center.x)!, y: (weatherLabel?.center.y)!)
		weatherLabel?.text = "大部晴朗"
		weatherLabel?.font = FONT_30
		weatherLabel?.textAlignment = NSTextAlignment.center
		weatherLabel?.textColor = UIColor.white
		self.contentView.addSubview(weatherLabel!)
		
		//3.数字温度
		temperatureLabel = UILabel(frame:CGRect(x: 0, y: (weatherLabel?.frame)!.maxY, width: 90, height: 90))
		temperatureLabel?.center = CGPoint(x: (weatherLabel?.center.x)!, y: (temperatureLabel?.center.y)!)
		temperatureLabel?.text = "19"
		temperatureLabel?.textColor = UIColor.white
		temperatureLabel?.font = FONT_140
		temperatureLabel?.textAlignment = NSTextAlignment.center
		self.contentView.addSubview(temperatureLabel!)
		
		//4.星期天
		timeLabel = UILabel(frame:CGRect(x: 10, y: temperatureLabel!.frame.maxY + X / 2, width: X / 2, height:LABELHEIGHT))
		timeLabel?.textColor = UIColor.white
		timeLabel?.font = FONT_30
		timeLabel?.textAlignment = NSTextAlignment.center
		timeLabel?.text = "星期三"
		self.contentView.addSubview(timeLabel!)
		
		//5.今天
		todayLabel = UILabel(frame:CGRect(x: timeLabel!.frame.maxX + 10, y: timeLabel!.frame.origin.y, width:40, height:LABELHEIGHT))
		todayLabel?.textColor = UIColor.white
		todayLabel?.font = FONT_30
		todayLabel?.textAlignment = NSTextAlignment.center
		todayLabel?.text = "今天"
		self.contentView.addSubview(todayLabel!)
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
