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

    let text1 = "ASTextNode А/В Do any additional setup after loading the view"
    let text2 = "UILabel А/В Do any additional setup after loading the view"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.lightGray
        
        loadTextNode()
        loadUILabel()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func loadTextNode() {
        let textNode = ASTextNode()
        textNode.attributedText = NSAttributedString(string: text1, attributes: [NSFontAttributeName: UIFont.systemFont(ofSize: 16), NSForegroundColorAttributeName: UIColor.red])
        textNode.frame = CGRect(x: 100, y: 100, width: 200, height: 20)
        textNode.backgroundColor = UIColor.blue
        view.addSubnode(textNode)
    }
    
    func loadUILabel() {
        let label = UILabel()
        label.text = text2
        label.textColor = UIColor.blue
        label.backgroundColor = UIColor.red
        label.frame = CGRect(x: 100, y: 200, width: 200, height: 20)
        view.addSubview(label)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

