//
//  UIView+Extension.swift
//  新浪微博
//
//  Created by 冰凌天 on 2017/7/12.
//  Copyright © 2017年 冰凌天. All rights reserved.
//

import UIKit

extension UIView {
    
    var x : CGFloat {
        set {
            self.frame.origin.x = newValue
        }
        
        get {
            
            return self.frame.origin.x
        }
    }
    
    var y : CGFloat {
        set {
            self.frame.origin.y = newValue
        }
        
        get {
            return self.frame.origin.y
        }
    }
    
    var width : CGFloat {
        set {
            self.frame.size.width = newValue
        }
        
        get {
            return self.frame.size.width
        }
    }
    
    var height : CGFloat {
        set {
            self.frame.size.height = newValue
        }
        
        get {
            return self.frame.size.height
        }
    }
    
    var right : CGFloat {
        set {
            self.frame.origin.x = newValue - self.width
        }
        
        get {
            return self.frame.origin.x + self.width
        }
    }
    
    var bottom : CGFloat {
        set {
            self.frame.origin.y = newValue - self.height
        }
        
        get {
            return self.frame.origin.y + self.height
        }
    }
    
    var centerX : CGFloat {
        set {
            self.center.x = newValue
        }
        
        get {
            return self.center.x
        }
    }
    
    var centerY : CGFloat {
        set {
            self.center.y = newValue
        }
        
        get {
            return self.center.y
        }
    }
}





























