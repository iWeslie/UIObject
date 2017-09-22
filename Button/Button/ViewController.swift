//
//  ViewController.swift
//  Button
//
//  Created by Weslie on 2017/9/21.
//  Copyright © 2017年 Weslie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func doSomething() {
        
    }
    
    @IBAction func doSomething(sender: UIButton) {
        
    }
    
    @IBAction func doSomething(sender: UIButton, forEvent event: UIEvent) {
        print(event)
    }
    
    @IBOutlet weak var defaultState: UIButton!
    @IBOutlet weak var highlightedState: UIButton!
    @IBOutlet weak var selectedState: UIButton!
    @IBOutlet weak var disabledState: UIButton!
    
    @IBOutlet weak var compassBtn: UIButton!
    
    @IBOutlet weak var reverseShadow: UIButton!
    
    @IBOutlet weak var notShowTouch: UIButton!
    
    @IBOutlet weak var tintBlue: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        To configure the appearance of all buttons in your app, use the appearance proxy object
//        UIButton.appearance().backgroundColor = UIColor.red
        
        //the button is hlighted when clicked
        highlightedState.isHighlighted = true
        selectedState.isSelected = true
        //select state config will add a roundrect background image automatically
        disabledState.isEnabled = false
        
        let compass = #imageLiteral(resourceName: "compass_tiny")
        compassBtn.setImage(compass, for: .normal)
//        let titleWidth = compassBtn.titleLabel?.intrinsicContentSize.width
//        let imageWidth = compassBtn.currentImage?.size.width
        compassBtn.moveImage(to: .right)
        
        reverseShadow.reversesTitleShadowWhenHighlighted = true

        //the property is false by default, it only work in the Custom ButtonType
        notShowTouch.adjustsImageWhenHighlighted = false
    }
    
}





