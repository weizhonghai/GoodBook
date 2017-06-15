//
//  GeneralFactory.swift
//  GoodBook
//
//  Created by 海神 on 2017/6/10.
//  Copyright © 2017年 海神. All rights reserved.
//

import UIKit

class GeneralFactory: NSObject {

    static func addTitleWithTitle (target:UIViewController , title1:String , title2:String) {
        let btn1 = UIButton(frame: CGRect(x: 10, y: 20, width: 40, height: 20))
        btn1.setTitle(title1, for: .normal)
        btn1.setTitleColor(.red, for: .normal)
        btn1.contentHorizontalAlignment = .left
        btn1.titleLabel?.font = UIFont(name: MY_FONT, size: 17)
        target.view.addSubview(btn1)
        
        let btn2 = UIButton(frame: CGRect(x: SCREEN_WIDTH - 50, y: 20, width: 40, height: 20))
        btn2.setTitle(title2, for: .normal)
        btn2.setTitleColor(.red, for: .normal)
        btn2.contentHorizontalAlignment = .right
        btn2.titleLabel?.font = UIFont(name: MY_FONT, size: 17)
        target.view.addSubview(btn2)
        
        btn1.addTarget(target, action:NSSelectorFromString("btn1"), for: .touchUpInside)
        btn2.addTarget(target, action: NSSelectorFromString("btn2"), for: .touchUpInside)
    }
    
}
