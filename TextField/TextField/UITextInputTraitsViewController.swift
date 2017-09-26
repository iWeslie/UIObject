//
//  UITextInputTraitsViewController.swift
//  TextField
//
//  Created by Weslie on 2017/9/24.
//  Copyright © 2017年 Weslie. All rights reserved.
//

import UIKit

class UITextInputTraitsViewController: UIViewController, UITextInputTraits {
    
    @IBOutlet weak var keyboardTypeDemostrateTF: UITextField!
    @IBOutlet weak var keyboardAppearanceDemostrateTF: UITextField!
    @IBOutlet weak var returnKeyTypeDemostrateTF: UITextField!
    @IBOutlet weak var autoCapitalizationDemostrateTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}

extension UITextInputTraitsViewController: UIPopoverPresentationControllerDelegate {
    enum SegueIdentifier: String {
        case keyboardType
    }
    
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }
    
    // All popover segues should be popovers even on iPhone.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let poposverController = segue.destination.popoverPresentationController, let button = sender as? UIButton {
            poposverController.delegate = self
            poposverController.sourceRect = button.bounds
        }
        
        let selectorVC = segue.destination as! KeyboardSelectorPopView
        //pass the segue to the secondViewController
        selectorVC.retSegue = segue
        
    }
    
    
}


