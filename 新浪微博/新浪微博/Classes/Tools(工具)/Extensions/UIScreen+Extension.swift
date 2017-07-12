
//
//  UIScreen+Extension.swift
//  新浪微博
//
//  Created by 冰凌天 on 2017/7/12.
//  Copyright © 2017年 冰凌天. All rights reserved.
//

import UIKit

extension UIScreen {
    
    class func width() -> CGFloat {
        return UIScreen.main.bounds.size.width
    }
    
    class func height() -> CGFloat {
        return UIScreen.main.bounds.size.height
    }
    
    class func scale() -> CGFloat {
        return UIScreen.main.scale
    }
}



