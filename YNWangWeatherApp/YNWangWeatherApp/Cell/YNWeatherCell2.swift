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

		let layout = UICollectionViewFlowLayout()
		layout.scrollDirection = UICollectionViewScrollDirection.horizontal
		collectView = UICollectionView(frame:CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: 80), collectionViewLayout:layout)
		collectView!.backgroundColor = UIColor.orange
		collectView!.delegate = self
		collectView!.dataSource = self
		self.contentView.addSubview(collectView!)
		collectView!.register(UINib(nibName: "CollectionCell", bundle: nil), forCellWithReuseIdentifier: "cell2")
		collectView?.showsHorizontalScrollIndicator = false

		
	}
	
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 24
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectView!.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! CollectionCell
		return cell
		
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		return CGSize(width: 66, height: 80)
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
		 return UIEdgeInsetsMake(15, 15, 5, 15);//分别为上、左、下、右
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
		return 10
	}


	
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
