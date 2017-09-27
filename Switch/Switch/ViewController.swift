//
//  ViewController.swift
//  Switch
//
//  Created by Weslie on 27/09/2017.
//  Copyright © 2017 Weslie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var valueChangedDemostrateSwitch: UISwitch!
    @IBAction func printValueChange(_ sender: UISwitch) {
        print("UISwitch -> ValueChanged")
    }
    
    @IBOutlet weak var switchStatusDemostrate: UISwitch!
    @IBAction func switchSwitchStatus(_ sender: UIButton) {
        if switchStatusDemostrate.isOn == true {
            switchStatusDemostrate.setOn(false, animated: true)
        } else {
            switchStatusDemostrate.setOn(true, animated: true)
        }
    }
    @IBOutlet weak var imageSwitch: UISwitch!
    
    @IBOutlet weak var statusImageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        statusImageLabel.attributedText = NSAttributedString(string: "StatusImage", attributes: [NSAttributedStringKey.strikethroughStyle : 1, NSAttributedStringKey.strikethroughColor : UIColor.gray])
//        In iOS 7 and later, this property has no effect.
        imageSwitch.onImage = #imageLiteral(resourceName: "photos_tiny")
        imageSwitch.offImage = #imageLiteral(resourceName: "photos_tiny")
    }
    
}

