
//
//  UIButton+Extension.swift
//  新浪微博
//
//  Created by 冰凌天 on 2017/7/11.
//  Copyright © 2017年 冰凌天. All rights reserved.
//

import UIKit

extension UIButton {
    
     convenience init(imageName : String, highlightedImageName : String, backImageName : String, highlightedBackImageName : String) {
        
        self.init()
        
        setImage(UIImage(named : imageName), for: .normal)
        setImage(UIImage(named : highlightedImageName), for: .highlighted)
        setBackgroundImage(UIImage(named : backImageName), for: .normal)
        setBackgroundImage(UIImage(named : highlightedBackImageName), for: .highlighted)
        sizeToFit()
    }
    
}


