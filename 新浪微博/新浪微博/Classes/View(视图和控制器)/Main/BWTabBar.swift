//
//  BWTabBar.swift
//  新浪微博
//
//  Created by 冰凌天 on 2017/7/11.
//  Copyright © 2017年 冰凌天. All rights reserved.
//

import UIKit

protocol BWTabBarDelegate : UITabBarDelegate {
    
    func didSelectedComposeButton()
}

class BWTabBar: UITabBar {

    weak var tabBarDelegate: BWTabBarDelegate?
    
    private lazy var composeButton : UIButton = {[weak self] () -> UIButton in
        
        let btn = UIButton(imageName: "tabbar_compose_icon_add", highlightedImageName: "tabbar_compose_icon_add_highlighted", backImageName: "tabbar_compose_button", highlightedBackImageName: "tabbar_compose_button_highlighted")
        btn.addTarget(self, action: #selector(didSelectedComposeButton), for: .touchUpInside)
        self?.addSubview(btn)
        return btn
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        var index : CGFloat = 0
        
        let width = self.bounds.size.width / 5.0
        
        for btn in subviews {
            
            if btn.isKind(of: NSClassFromString("UITabBarButton")!) {
                btn.frame = CGRect(x: width * (index >= 2 ? index + 1 : index), y: btn.frame.origin.y, width: width, height: btn.frame.size.height)
                index += 1
            }
        }
        
//        composeButton.center = CGPoint(x: self.frame.size.width * 0.5, y: self.frame.size.height * 0.5)
        composeButton.centerX = self.width * 0.5
        composeButton.centerY = self.height * 0.5
    }

}

extension BWTabBar {
    
    @objc fileprivate func didSelectedComposeButton() {
        
        guard let tabBarDelegate = tabBarDelegate else {
            return
        }
        
        if tabBarDelegate.responds(to: #selector(didSelectedComposeButton)) {
            tabBarDelegate.didSelectedComposeButton()
        }
    }
    
}



























