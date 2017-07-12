//
//  BWNavigationController.swift
//  新浪微博
//
//  Created by 冰凌天 on 2017/7/11.
//  Copyright © 2017年 冰凌天. All rights reserved.
//

import UIKit

class BWNavigationController: UINavigationController, UIGestureRecognizerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 隐藏默认的NavigationBar
        self.navigationBar.isHidden = true
        
        
        self.interactivePopGestureRecognizer?.delegate = self as UIGestureRecognizerDelegate;
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
override func pushViewController(_ viewController: UIViewController, animated: Bool) {
    
    if childViewControllers.count > 0 {
        
        // 判断控制器类型 (多态)
        if let viewController = viewController as? BWBaseViewController {
            
            // 获取 导航控制器栈里最后一个控制器, 这里第一个控制器也是BWBaseViewController类型
            let vc = childViewControllers[childViewControllers.count - 1] as! BWBaseViewController;
            
            // 获取标题, 没有就使用 "返回", 这个标题在返回按钮上使用
            var title = vc.navItem.title ?? "返回"
            
            // 第二层开始, 统一用 "返回"
            if childViewControllers.count > 1 {
                title = "返回"
            }
            
            // 设置返回按钮, 使用 "上一个界面的标题", 没有就是用 "返回"
            viewController.navItem.leftBarButtonItem = UIBarButtonItem.item(
                imageName: "navigationbar_back_withtext",
                highlightedImageName: "navigationbar_back_withtext_highlighted",
                title : title,
                titleColor : UIColor.color(red: 96, green: 96, blue: 96),
                highlightedTitleColor : UIColor.color(red: 253, green: 130, blue: 36),
                font : UIFont.systemFont(ofSize: 19),
                target: self,
                action: #selector(back))
        }
        
        // 隐藏底部tabBar
        viewController.hidesBottomBarWhenPushed = true
    }
    
    
    
    super.pushViewController(viewController, animated: animated)
    
}

@objc private func back() {
    popViewController(animated: true)
}
    
    // MARK: - UIGestureRecognizerDelegate
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return self.childViewControllers.count > 1
    }
}
