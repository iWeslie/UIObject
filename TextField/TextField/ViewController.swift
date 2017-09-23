//
//  ViewController.swift
//  TextField
//
//  Created by Weslie on 2017/9/23.
//  Copyright © 2017年 Weslie. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var textSample: UITextField!
    @IBOutlet weak var firstResponderTF: UITextField!
    @IBOutlet weak var tapToBecomeFirstResponder: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        tapToBecomeFirstResponder.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(TFBecomeFirstResponder)))
        
    }
    
    @objc func TFBecomeFirstResponder() {
        firstResponderTF.becomeFirstResponder()
    }
    
    @objc func cancelFirstResponder() {
        self.resignFirstResponder()
    }


}

