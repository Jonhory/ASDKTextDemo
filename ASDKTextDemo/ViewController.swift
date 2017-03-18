//
//  ViewController.swift
//  ASDKTextDemo
//
//  Created by Jonhory on 2017/3/17.
//  Copyright © 2017年 com.wujh. All rights reserved.
//

import UIKit
import AsyncDisplayKit

class ViewController: UIViewController {

    let text1 = "TEXT АВ Do any additional setup after loading the view"
    let text2 = "TEXT / АВ Do any additional setup after loading the view"
    let text3 = "View;ControllerAsyncDisplayKit"
    let text4 = "ViewControllerAsyncDisplayKit"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.lightGray
        
        loadTextNode(y: 100, with: "This is ASTextNode")
        loadUILabel(y: 130, with: "This is UILabel")
        
        loadTextNode(y: 200, with: text1)
        loadUILabel(y: 230, with: text1)
        
        loadTextNode(y: 260, with: text2)
        loadUILabel(y: 290, with: text2)
        
        loadTextNode(y: 320, with: text3)
        loadUILabel(y: 350, with: text3)
        
        loadTextNode(y: 380, with: text4)
        loadUILabel(y: 410, with: text4)
    }
    
    func loadTextNode(y: CGFloat, with text: String) {
        let textNode = ASTextNode()
        textNode.attributedText = NSAttributedString(string: text,
                                                     attributes: [NSFontAttributeName: UIFont.systemFont(ofSize: 16),
                                                                  NSForegroundColorAttributeName: UIColor.red])
        textNode.frame = CGRect(x: 100, y: y, width: 200, height: 20)
        textNode.backgroundColor = UIColor.blue
        view.addSubnode(textNode)
    }
    
    func loadUILabel(y: CGFloat, with text: String) {
        let label = UILabel()
        label.text = text
        label.textColor = UIColor.blue
        label.font = UIFont.systemFont(ofSize: 16)
        label.backgroundColor = UIColor.red
        label.frame = CGRect(x: 100, y: y, width: 200, height: 20)
        view.addSubview(label)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

