//
//  BWTabBarViewController.swift
//  新浪微博
//
//  Created by 冰凌天 on 2017/7/11.
//  Copyright © 2017年 冰凌天. All rights reserved.
//

import UIKit

/// 主控制器
class BWTabBarViewController: UITabBarController, BWTabBarDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupChildController()
        
        setup()
    }
    
    private func setup() {
        
        let item = UITabBarItem.appearance()
        let normal = [NSForegroundColorAttributeName : UIColor.color(red: 145, green: 145, blue: 145)]
        item.setTitleTextAttributes(normal, for: .normal)
        let selected = [NSForegroundColorAttributeName : UIColor.color(red: 253, green: 130, blue: 36)]
        item.setTitleTextAttributes(selected, for: .selected)
        
        let tabBar = BWTabBar()
        tabBar.tabBarDelegate = self as BWTabBarDelegate
        setValue(tabBar, forKeyPath: "tabBar")
    }
    
    func didSelectedComposeButton() {
        print("点击按钮")
    }
    
}

// extension 类似于OC中的分类, 在Swift中还可以用来切分代码块
// 可以把相近功能的函数, 放在一个 extension中
// 便于代码维护
// 注意: 和 OC 的分类一样, extension 中不能定义属性
// MARK: - 设置界面
extension BWTabBarViewController {
    
    /// 设置所有的子控制器
    fileprivate func setupChildController() {
        
        let array = [
            ["clsName" : "BWHomeViewController", "title" : "首页", "imageName" : "tabbar_home", "selectedImageName" : "tabbar_home_selected"],
            ["clsName" : "BWMessageViewController", "title" : "消息", "imageName" : "tabbar_message_center", "selectedImageName" : "tabbar_message_center_selected"],
            ["clsName" : "BWDiscoverViewController", "title" : "发现", "imageName" : "tabbar_discover", "selectedImageName" : "tabbar_discover_selected"],
            ["clsName" : "BWProfileViewController", "title" : "我的", "imageName" : "tabbar_profile", "selectedImageName" : "tabbar_profile_selected"]
        
        ]
        
        for dict in array {
            addChildViewController(controller(dict: dict))
        }
    }
    
    /// 使用字典创建一个子控制器
    ///
    /// - Parameter dict: 信息字典
    /// - Returns: 子控制器
    fileprivate func controller(dict : [String : String]) -> UIViewController {
        
        // 取得字典内容
        
        guard let clsName = dict["clsName"],
                let title = dict["title"],
            let imageName = dict["imageName"],
            let selectedImageName = dict["selectedImageName"],
                let cls = NSClassFromString(Bundle.main.namespace + "." + clsName) as? UIViewController.Type else {
            return UIViewController()
        }
        
        // 创建视图控制器
        // 将 clsName 转换成 cls
        
        let vc = cls.init()
        
        vc.title = title
        
        vc.tabBarItem = UITabBarItem(title: title, image: UIImage(named:imageName), selectedImage: UIImage(named:selectedImageName))
        
        let nav = BWNavigationController(rootViewController: vc)
        
        return nav
    }
}































