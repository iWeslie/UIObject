//
//  NSAttributedStringViewController.swift
//  Label
//
//  Created by Weslie on 2017/9/21.
//  Copyright © 2017年 Weslie. All rights reserved.
//

import UIKit

class NSAttributedStringViewController: UIViewController {
    
    @IBAction func pressToDismiss(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var lbl3: UILabel!
    @IBOutlet weak var lbl4: UILabel!
    @IBOutlet weak var lbl5: UILabel!
    @IBOutlet weak var lbl6: UILabel!
    @IBOutlet weak var lbl7: UILabel!
    @IBOutlet weak var lbl8: UILabel!
    @IBOutlet weak var lbl9: UILabel!
    @IBOutlet weak var lbl10: UILabel!
    @IBOutlet weak var lbl11: UILabel!
    @IBOutlet weak var lbl12: UILabel!
    @IBOutlet weak var lbl13: UILabel!
    @IBOutlet weak var lbl14: UILabel!
    @IBOutlet weak var lbl15: UILabel!
    

    

    override func viewDidLoad() {
        super.viewDidLoad()

        lbl1.attributedText = NSAttributedString(string: "backgroundColor", attributes: [NSAttributedStringKey.backgroundColor : UIColor.lightGray])
        
        lbl2.attributedText = NSAttributedString(string: "baselineOffset+10", attributes: [NSAttributedStringKey.baselineOffset : 10])
        
        lbl3.attributedText = NSAttributedString(string: "expansion+0.5", attributes: [NSAttributedStringKey.expansion : 0.5])
        
        lbl4.attributedText = NSAttributedString(string: "foregroundColor", attributes: [NSAttributedStringKey.foregroundColor : UIColor.lightGray])
        
        lbl5.attributedText = NSAttributedString(string: "kern+5", attributes: [NSAttributedStringKey.kern : 5])
        
        lbl6.attributedText = NSAttributedString(string: "Zapfino", attributes: [NSAttributedStringKey.ligature : 0])
        
        lbl8.attributedText = NSAttributedString(string: "Zapfino", attributes: [NSAttributedStringKey.ligature : 1])
        
        lbl7.attributedText = NSAttributedString(string: "linkURL", attributes: [NSAttributedStringKey.link : URL(string: "http://www.google.com")!])
        
        lbl9.attributedText = NSAttributedString(string: "obliqueness+0.5", attributes: [NSAttributedStringKey.obliqueness : 0.5])
        
        let shadow = NSShadow()
        shadow.shadowBlurRadius = 2
        shadow.shadowOffset = CGSize(width: 5, height: 5)
        shadow.shadowColor = UIColor.lightGray
        lbl10.attributedText = NSAttributedString(string: "shadow", attributes: [NSAttributedStringKey.shadow : shadow])

        //1-7 is single line, 9-15 is double line
        lbl11.attributedText = NSAttributedString(string: "strikethrough", attributes: [NSAttributedStringKey.strikethroughStyle : 9, NSAttributedStringKey.strikethroughColor : UIColor.blue])
        
        lbl12.attributedText = NSAttributedString(string: "strikethrough", attributes: [NSAttributedStringKey.strokeWidth : 1, NSAttributedStringKey.strokeColor : UIColor.blue])

//        lbl13.attributedText = NSAttributedString(string: "shadow", attributes: [NSAttributedStringKey.textEffect : "letterpressStyle"])
        
        lbl13.attributedText = NSAttributedString(string: "underline", attributes: [NSAttributedStringKey.underlineColor : UIColor.blue, NSAttributedStringKey.underlineStyle : 1])
        
        let str = NSMutableAttributedString(string: "The Programming Language Swift")
        let range1 = Range.init(4...14)
        //add mutable attributes to a string
        str.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor.lightGray, range: NSRange.init(range1))
        str.addAttributes([NSAttributedStringKey.foregroundColor : UIColor.orange], range: NSRange.init(location: 25, length: 5))
        lbl15.attributedText = str


    }

}















