//
//  UIColor+Extension.swift
//  新浪微博
//
//  Created by 冰凌天 on 2017/7/11.
//  Copyright © 2017年 冰凌天. All rights reserved.
//

import Foundation

extension UIColor {
    class func color(red : Int32, green : Int32, blue : Int32) -> UIColor {
        return UIColor.init(colorLiteralRed: Float(red) / 255.0, green: Float(green) / 255.0, blue: Float(blue) / 255.0, alpha: 1.0)
    }
}


