//
//  UIBarButtonItem+Extension.swift
//  新浪微博
//
//  Created by 冰凌天 on 2017/7/12.
//  Copyright © 2017年 冰凌天. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    
    /// 创建UIBarButtonItem
    ///
    /// - Parameters:
    ///   - imageName: 默认图片名字
    ///   - highlightedImageName: 高亮图片名字
    ///   - target: 对象
    ///   - action: 方法
    convenience init(imageName : String, highlightedImageName : String, target : Any?, action : Selector) {
        
        let btn = UIButton()
        btn.setImage(UIImage(named : imageName), for: .normal)
        btn.setImage(UIImage(named : highlightedImageName), for: .highlighted)
        btn.addTarget(target, action: action, for: .touchUpInside)
        btn.sizeToFit()
        
        self.init(customView: btn)
    }
    
    /// 创建UIBarButtonItem
    ///
    /// - Parameters:
    ///   - imageName: 默认图片名字
    ///   - highlightedImageName: 高亮图片名字
    ///   - target: 对象
    ///   - action: 方法
    /// - Returns: UIBarButtonItem
    class func item(imageName : String, highlightedImageName : String, target : Any?, action : Selector) -> UIBarButtonItem {
        
        let btn = UIButton()
        btn.setImage(UIImage(named : imageName), for: .normal)
        btn.setImage(UIImage(named : highlightedImageName), for: .highlighted)
        btn.addTarget(target, action: action, for: .touchUpInside)
        btn.sizeToFit()
        
        let item = UIBarButtonItem(customView: btn)
        return item
    }
    
    convenience init (imageName : String, highlightedImageName : String, title : String, titleColor : UIColor, highlightedTitleColor : UIColor, font : UIFont, target : Any?, action : Selector) {
        
        let btn = UIButton()
        btn.setImage(UIImage(named : imageName), for: .normal)
        btn.setImage(UIImage(named : highlightedImageName), for: .highlighted)
        btn.setTitle(title, for: .normal)
        btn.setTitleColor(titleColor, for: .normal)
        btn.setTitleColor(highlightedTitleColor, for: .highlighted)
        btn.addTarget(target, action: action, for: .touchUpInside)
        btn.titleLabel?.font = font
        btn.contentEdgeInsets = UIEdgeInsets(top: 0, left: -10, bottom: 0, right: 0)
        btn.sizeToFit()
        
        self.init(customView: btn)
    }
    
    class func item(imageName : String, highlightedImageName : String, title : String, titleColor : UIColor, highlightedTitleColor : UIColor, font : UIFont, target : Any?, action : Selector) -> UIBarButtonItem {
        
        let btn = UIButton()
        btn.setImage(UIImage(named : imageName), for: .normal)
        btn.setImage(UIImage(named : highlightedImageName), for: .highlighted)
        btn.setTitle(title, for: .normal)
        btn.setTitleColor(titleColor, for: .normal)
        btn.setTitleColor(highlightedTitleColor, for: .highlighted)
        btn.addTarget(target, action: action, for: .touchUpInside)
        btn.titleLabel?.font = font
        btn.contentEdgeInsets = UIEdgeInsets(top: 0, left: -10, bottom: 0, right: 0)
        btn.sizeToFit()
        
        let item = UIBarButtonItem(customView: btn)
        return item
    }
}


