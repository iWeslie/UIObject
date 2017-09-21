//
//  ViewController.swift
//  Button
//
//  Created by Weslie on 2017/9/21.
//  Copyright © 2017年 Weslie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.btn1.setTitle("application", for: .application)
        self.btn1.setTitle("disabled", for: .disabled)
        self.btn1.setTitle("focused", for: .focused)
        self.btn1.setTitle("highlighted", for: .highlighted)
        self.btn1.setTitle("normal", for: .normal)
        self.btn1.setTitle("reserved", for: .reserved)
        self.btn1.setTitle("selected", for: .selected)
        self.btn1.addTarget(self, action: #selector(btn1Tap), for: .touchUpInside)

        self.btn2.setTitle("application", for: .application)
        self.btn2.setTitle("disabled", for: .disabled)
        self.btn2.setTitle("focused", for: .focused)
        self.btn2.setTitle("highlighted", for: .highlighted)
        self.btn2.setTitle("normal", for: .normal)
        self.btn2.setTitle("reserved", for: .reserved)
        self.btn2.setTitle("selected", for: .selected)
        self.btn2.addTarget(self, action: #selector(btn2Tap), for: .touchUpInside)
    }
    
    
    @objc func btn1Tap() {
        if btn2.isSelected == true {
            btn2.isSelected = false
        }
        btn1.isSelected = true
    }

    @objc func btn2Tap() {
        if btn1.isSelected == true {
            btn1.isSelected = false
        }
        btn2.isSelected = true
    }

}

