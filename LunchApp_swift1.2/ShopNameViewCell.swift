//
//  ShopNameViewCell.swift
//  LunchApp_swift1.2
//
//  Created by hide on 2015/07/08.
//  Copyright (c) 2015年 byGeek01. All rights reserved.
//

//   詳細tableview１行目cell
//   店舗名および店舗説明文、基本情報を表示する

import Foundation
import UIKit
import QuartzCore

class ShopNameViewCell:UITableViewCell {
    
    var shopNameLabel = UILabel(frame: CGRectZero)
    var shopTextField = UITextView(frame: CGRectZero)
    let iconView1 = UIImageView()
    let iconView2 = UIImageView()
    var urlLabel = UILabel(frame: CGRectZero)
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.addSubview(shopNameLabel)
        self.contentView.addSubview(shopTextField)
        self.selectionStyle = UITableViewCellSelectionStyle.None
        //labelの設定
        shopNameLabel.sizeToFit()
        shopNameLabel.font      = SettingConfig.detailShopNameFont
        shopNameLabel.textColor = UIColor.blackColor()
        //textFieldの設定
        shopTextField.sizeToFit()
        shopTextField.font      = SettingConfig.generalFont
        shopTextField.textColor = UIColor.blackColor()
        shopTextField.textAlignment = NSTextAlignment.Left
        //icon
        
        iconView1.image = UIImage(named: "timeIcon")
        self.contentView.addSubview(iconView1)
        iconView2.image = UIImage(named: "chatIcon")
        self.contentView.addSubview(iconView2)
        urlLabel.sizeToFit()
        urlLabel.font = SettingConfig.generalFont
        self.contentView.addSubview(urlLabel)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        shopNameLabel.frame = CGRect(x: 5, y: 5, width: SettingConfig.screenWidth-5, height: 50)
        shopTextField.frame = CGRect(x: 5, y: shopNameLabel.frame.origin.y+shopNameLabel.frame.height+5, width: SettingConfig.screenWidth/2-10, height: self.frame.height/3*2-5)
        iconView1.frame = CGRect(x: SettingConfig.screenWidth/2+5, y: shopTextField.frame.origin.y, width: 16, height: 16)
        iconView2.frame = CGRect(x: iconView1.frame.origin.x,y: iconView1.frame.origin.y+iconView1.frame.height+30,width:16,height:16)
        urlLabel.frame = CGRect(x: iconView1.center.x+20, y: shopTextField.frame.origin.y, width: 100, height: 20)
    }
    
}