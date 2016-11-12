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
		self.contentView.backgroundColor = UIColor.red
		weekLabel = UILabel(frame: CGRect(x: 10, y: 10, width: 50, height: 30))
		weekLabel.textColor = UIColor.white
		weekLabel.font = UIFont.systemFont(ofSize: 15)
		self.contentView.addSubview(weekLabel)
		weekLabel.textAlignment = NSTextAlignment.center
		
		let wid = width(self.contentView)
		temLabel = UILabel(frame: CGRect(x: wid - 30, y: weekLabel.frame.origin.y, width: 100, height: 30))
		temLabel.textColor = UIColor.white
		temLabel.font = UIFont.systemFont(ofSize: 15)
		temLabel.textAlignment = NSTextAlignment.right
		self.contentView.addSubview(temLabel)
		
		imageIcon = UIImageView(frame:CGRect(x: weekLabel.frame.maxX + 130, y: weekLabel.frame.origin.y, width: 30, height: 30))
		imageIcon.image = UIImage(named: "sunny")
		imageIcon.contentMode = UIViewContentMode.scaleAspectFit
		self.contentView.addSubview(imageIcon)
	}

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
