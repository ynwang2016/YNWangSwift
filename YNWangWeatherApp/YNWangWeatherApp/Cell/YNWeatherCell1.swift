//
//  YNWeatherCell1.swift
//  YNWangWeatherApp
//
//  Created by ynwang on 16/11/3.
//  Copyright © 2016年 ynwang. All rights reserved.
//

import UIKit

class YNWeatherCell1: UITableViewCell {

	var weekLabel : UILabel!
	var temLabel : UILabel!
	var imageIcon : UIImageView!
	
	
	
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
		
		
    }
	override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)
		setUpViews()
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	func setUpViews() {
		self.contentView.backgroundColor = UIColor.redColor()
		weekLabel = UILabel(frame: CGRect(x: 10, y: 10, width: 50, height: 30))
		weekLabel.textColor = UIColor.whiteColor()
		weekLabel.font = UIFont.systemFontOfSize(15)
		self.contentView.addSubview(weekLabel)
		weekLabel.textAlignment = NSTextAlignment.Center
		
		temLabel = UILabel(frame: CGRect(x: self.contentView.frame.size.width - 30, y: weekLabel.frame.origin.y, width: 100, height: 30))
		temLabel.textColor = UIColor.whiteColor()
		temLabel.font = UIFont.systemFontOfSize(15)
		temLabel.textAlignment = NSTextAlignment.Right
		self.contentView.addSubview(temLabel)
		
		imageIcon = UIImageView(frame:CGRect(x: CGRectGetMaxX(weekLabel.frame) + 130, y: weekLabel.frame.origin.y, width: 30, height: 30))
		imageIcon.image = UIImage(named: "sunny")
		imageIcon.contentMode = UIViewContentMode.ScaleAspectFit
		self.contentView.addSubview(imageIcon)
	}

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
