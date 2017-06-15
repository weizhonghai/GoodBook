//
//  rankViewController.swift
//  GoodBook
//
//  Created by 海神 on 2017/6/9.
//  Copyright © 2017年 海神. All rights reserved.
//

import UIKit

class rankViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        let lable = UILabel(frame: CGRect.init(x: 0, y: 0, width: 200, height: 100))
        lable.center = self.view.center
        lable.text = "哈哈哈大家按实际wj kla"
        lable.textColor = UIColor.black
        lable.textAlignment = .center
        lable.adjustsFontSizeToFitWidth = true
        self.view.addSubview(lable)
        lable.font = UIFont(name: "经典隶变简", size: 15)
    }


}
