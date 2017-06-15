//
//  BookTitleView.swift
//  GoodBook
//
//  Created by 海神 on 2017/6/15.
//  Copyright © 2017年 海神. All rights reserved.
//

import UIKit

@objc protocol BookTitleDelegate {
    @objc optional func choicCover()
}

class BookTitleView: UIView {

    var BookCover:UIButton?
    
    var BookName:JVFloatLabeledTextField?
    
    var BookEditor:JVFloatLabeledTextField?
    
    var delegate:BookTitleDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.BookCover = UIButton(frame: CGRect(x: 10, y: 8, width: 110, height: 141))
        self.BookCover?.setImage(UIImage.init(named: "Cover"), for: .normal)
        self.BookCover?.addTarget(self, action: #selector(choiceCover), for: .touchUpInside)
        self.addSubview(self.BookCover!)
        
        self.BookName = JVFloatLabeledTextField(frame: CGRect(x: 128, y: 48, width: SCREEN_WIDTH - 128 - 15, height: 30))
        self.BookEditor = JVFloatLabeledTextField(frame: CGRect(x: 128, y: 78 + 40, width: SCREEN_WIDTH - 128 - 15, height: 30))
        
        self.BookName?.placeholder = "书名"
        self.BookEditor?.placeholder = "作者"
        
        self.BookName?.floatingLabelFont = UIFont(name: MY_FONT, size: 14)
        self.BookEditor?.floatingLabelFont = UIFont(name: MY_FONT, size: 14)
        
        self.BookName?.font = UIFont(name: MY_FONT, size: 14)
        self.BookEditor?.font = UIFont(name: MY_FONT, size: 14)
        
        self.addSubview(self.BookName!)
        self.addSubview(self.BookEditor!)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func choiceCover() {
        self.delegate?.choicCover!()
    }
    

}
