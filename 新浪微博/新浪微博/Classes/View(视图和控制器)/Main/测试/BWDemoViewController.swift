//
//  BWDemoViewController.swift
//  新浪微博
//
//  Created by 冰凌天 on 2017/7/12.
//  Copyright © 2017年 冰凌天. All rights reserved.
//

import UIKit

class BWDemoViewController: BWBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navItem.title = "第 \((navigationController?.childViewControllers.count)!) 个"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

extension BWDemoViewController {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        navigationController?.pushViewController(BWDemoViewController(), animated: true)
    }
}

