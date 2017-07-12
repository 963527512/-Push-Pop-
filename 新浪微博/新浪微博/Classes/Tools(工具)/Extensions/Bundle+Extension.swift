//
//  Bundle+Extension.swift
//  新浪微博
//
//  Created by 冰凌天 on 2017/7/11.
//  Copyright © 2017年 冰凌天. All rights reserved.
//

import Foundation

extension Bundle {
    
    var namespace : String {
        return self.infoDictionary?["CFBundleName"] as? String ?? ""
    }
    
}

