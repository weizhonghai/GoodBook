//
//  pushNewBookController.swift
//  GoodBook
//
//  Created by 海神 on 2017/6/10.
//  Copyright © 2017年 海神. All rights reserved.
//

import UIKit

class pushNewBookController: UIViewController ,BookTitleDelegate {

    
    
    var BookTitle:BookTitleView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white
        GeneralFactory.addTitleWithTitle(target: self, title1: "关闭", title2: "确认")
        self.BookTitle = BookTitleView(frame: CGRect(x: 0, y: 40, width: SCREEN_WIDTH, height: 160))
        self.BookTitle?.delegate = self as BookTitleDelegate
        self.view.addSubview(self.BookTitle!)
    }

    func choicCover() {
        print("choicCover")
    }
    
    func btn1() {
        self.dismiss(animated: true) { 
            
        }
    }
    
    func btn2() {
        self.dismiss(animated: true) { 
            
        }
    }

}
