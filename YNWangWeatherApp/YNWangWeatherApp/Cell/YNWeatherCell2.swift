//
//  YNWeatherCell2.swift
//  YNWangWeatherApp
//
//  Created by ynwang on 16/11/7.
//  Copyright © 2016年 ynwang. All rights reserved.
//

import UIKit

class YNWeatherCell2: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

	var timgLabel: UILabel!
	var imgIcon: UIImageView!
	var tempLabel:UILabel!
	var collectView:UICollectionView?
	
	
	
	
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

		let screenBounds:CGRect = UIScreen.mainScreen().bounds
		let layout = UICollectionViewFlowLayout()
		layout.scrollDirection = UICollectionViewScrollDirection.Horizontal
		collectView = UICollectionView(frame:CGRectMake(0, 0, screenBounds.size.width, 80), collectionViewLayout:layout)
		collectView!.backgroundColor = UIColor.orangeColor()
		collectView!.delegate = self
		collectView!.dataSource = self
		self.contentView.addSubview(collectView!)
		collectView!.registerNib(UINib(nibName: "CollectionCell", bundle: nil), forCellWithReuseIdentifier: "cell2")
		collectView?.showsHorizontalScrollIndicator = false

		
	}
	
	func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 24
	}
	
	func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
		let cell = collectView!.dequeueReusableCellWithReuseIdentifier("cell2", forIndexPath: indexPath) as! CollectionCell
		return cell
		
	}
	
	func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
		return CGSizeMake(66, 80)
	}
	
	func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
		 return UIEdgeInsetsMake(15, 15, 5, 15);//分别为上、左、下、右
	}
	
	func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
		return 10
	}


	
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
