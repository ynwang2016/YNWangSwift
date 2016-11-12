//
//  CollectionCell.swift
//  YNWangWeatherApp
//
//  Created by ynwang on 16/11/8.
//  Copyright © 2016年 ynwang. All rights reserved.
//

import UIKit

class CollectionCell: UICollectionViewCell {

	@IBOutlet weak var timeLab: UILabel!
	@IBOutlet weak var iconImg: UIImageView!
	@IBOutlet weak var temLab: UILabel!
	
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
		
		self.backgroundColor = UIColor.orange
		
    }

}
