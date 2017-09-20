//
//  ViewController.swift
//  Label
//
//  Created by Weslie on 2017/9/20.
//  Copyright © 2017年 Weslie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var lbl3: UILabel!
    @IBOutlet weak var lbl4: UILabel!
    
    @IBOutlet weak var lbl5: UILabel!
    @IBOutlet weak var lbl7: UILabel!
    @IBOutlet weak var lbl8: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbl1.lineBreakMode = .byTruncatingMiddle
        
        lbl2.numberOfLines = 3
        
        lbl3.isHighlighted = true
        lbl3.highlightedTextColor = UIColor.lightGray
        
        lbl4.shadowColor = UIColor.darkGray
        lbl4.shadowOffset = CGSize(width: 10, height: 2)
        
        lbl5.textAlignment = .center
        
        lbl7.adjustsFontSizeToFitWidth = true
        
        lbl8.adjustsFontSizeToFitWidth = true
        lbl8.baselineAdjustment = .none
        
        
    }

}

