//
//  BWBaseViewController.swift
//  新浪微博
//
//  Created by 冰凌天 on 2017/7/11.
//  Copyright © 2017年 冰凌天. All rights reserved.
//

import UIKit

class BWBaseViewController: UIViewController {

    // 自定义导航条
    lazy var navigationBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: UIScreen.width(), height: 64))
    
    lazy var navItem: UINavigationItem = UINavigationItem()
    
    // 重写 title 的 didSet方法
    override var title: String? {
        didSet {
            navItem.title = title
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.cz_random()
        
        // 将导航条 添加到 view上
        view.addSubview(navigationBar)
        
        // 将 navItem 设置给 navigationBar
        navigationBar.items = [navItem]
        
        // 设置 navBar 的渲染颜色
        navigationBar.barTintColor = UIColor.white
    }
}
