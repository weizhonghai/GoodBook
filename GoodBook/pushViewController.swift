//
//  pushViewController.swift
//  GoodBook
//
//  Created by 海神 on 2017/6/9.
//  Copyright © 2017年 海神. All rights reserved.
//

import UIKit

class pushViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.blue
        
        self.setNavigationBar()
    }
    
    func setNavigationBar() {
        let navigationView = UIView(frame: CGRect.init(x: 0, y: -20, width: SCREEN_WIDTH, height: 65))
        navigationView.backgroundColor = UIColor.white
        self.navigationController?.navigationBar.addSubview(navigationView)
        
        let addBookBtn = UIButton(frame: CGRect.init(x: 20, y: 20, width: SCREEN_WIDTH, height: 45))
        addBookBtn.setImage(UIImage.init(named: "plus circle"), for: .normal)
        addBookBtn.setTitle("    新建书评", for: .normal)
        addBookBtn.setTitleColor(.black, for: .normal)
        addBookBtn.titleLabel?.font = UIFont(name: MY_FONT, size: 17)
        addBookBtn.addTarget(self, action: #selector(pushViewController.pushNewBook), for: .touchUpInside)
        addBookBtn.contentHorizontalAlignment = .left
        navigationView.addSubview(addBookBtn)
        
    }
    func pushNewBook() {
        let vc = pushNewBookController()
        self.present(vc, animated: true) { 
            
        }
    }

}
