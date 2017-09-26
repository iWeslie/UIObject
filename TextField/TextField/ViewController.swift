//
//  ViewController.swift
//  TextField
//
//  Created by Weslie on 2017/9/23.
//  Copyright © 2017年 Weslie. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextInputTraits {

    @IBOutlet weak var textSample: UITextField!
    @IBOutlet weak var firstResponderTF: UITextField!
    @IBOutlet weak var tapToBecomeFirstResponder: UILabel!

    @IBOutlet weak var delegateDemostrateTF: UITextField!
    @IBOutlet weak var TFwithOverlayView: UITextField!
    @IBOutlet weak var attributedPlaceholderTF: UITextField!
    @IBOutlet weak var TFWithPreservedString: UITextField!
    @IBOutlet weak var TFInputWithView: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        tapToBecomeFirstResponder.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(TFBecomeFirstResponder)))
        
        delegateDemostrateTF.delegate = self
        
        let overlayButton = UIButton(type: .custom)
        overlayButton.setImage(#imageLiteral(resourceName: "photos_tiny"), for: .normal)
        overlayButton.frame = CGRect(x: 0, y: 0, width: 28, height: 28)
        // use the rightViewMode and clearButtonMode properties to define when your custom overlay should be displayed and when the clear button should be displayed.
        TFwithOverlayView.leftView = overlayButton
        TFwithOverlayView.leftViewMode = .always
        
        attributedPlaceholderTF.attributedPlaceholder = NSAttributedString(string: "Placeholder", attributes: [NSAttributedStringKey.font : UIFont.init(name: ".SFUIDisplay-Ultralight", size: 20)!, NSAttributedStringKey.foregroundColor: UIColor.lightGray])
        attributedPlaceholderTF.textAlignment = .center
        
        TFWithPreservedString.restorationIdentifier = "restore"

        //inputVIew's width will always be the screen's bounds width
        TFInputWithView.inputView = (Bundle.main.loadNibNamed("TFInputView", owner: nil, options: [:])?.first as! UIView)
        TFInputWithView.inputAccessoryView = (Bundle.main.loadNibNamed("TFInputAccessoryView", owner: nil, options: [:])?.first as! UIView)
        
    }
    
    
    @objc func TFBecomeFirstResponder() {
        // Specifically, the system dismisses the keyboard when the user taps a new control that does not support keyboard input.
        firstResponderTF.becomeFirstResponder()

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}

extension ViewController: UITextFieldDelegate {

/*
     Before becoming the first responder, the text field calls its delegate’s textFieldShouldBeginEditing(_:) method. Use that method to allow or prevent the editing of the text field’s contents.
     
     The text field becomes the first responder.
     
     In response, the system displays the keyboard (or the text field’s input view) and posts the UIKeyboardWillShow and UIKeyboardDidShow notifications as needed. If the keyboard or another input view was already visible, the system posts the UIKeyboardWillChangeFrame and UIKeyboardDidChangeFrame notifications instead.
     
     The text field calls its delegate’s textFieldDidBeginEditing(_:) method and posts a UITextFieldTextDidBeginEditing notification.
     
     The text field calls various delegate methods during editing:
     
     Whenever the current text changes, it calls the textField(_:shouldChangeCharactersIn:replacementString:) method and posts the UITextFieldTextDidChange notification.
     
     It calls the textFieldShouldClear(_:) method when the user taps the built-in button to clear the text.
     
     It calls the textFieldShouldReturn(_:) method when the user taps the keyboard’s return button.
     
     Before resigning as first responder, the text field calls its delegate’s textFieldShouldEndEditing(_:) method. Use that method to validate the current text.
     
     The text field resigns as first responder.
     
     In response, the system hides or adjusts the keyboard as needed. When hiding the keyboard, the system posts the UIKeyboardWillHide and UIKeyboardDidHide notifications.
     
     The text field calls its delegate’s textFieldDidEndEditing(_:) method and posts a UITextFieldTextDidEndEditing notification.
     
 */

    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {// return NO to disallow editing.
        print("textFieldShouldBeginEditing")
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {// became first responder
        print("textFieldDidBeginEditing")
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {// return YES to allow editing to stop and to resign first responder status. NO to disallow the editing session to end
        print("textFieldShouldEndEditing")
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {// may be called if forced even if shouldEndEditing returns NO (e.g. view removed from window) or endEditing:YES called
        print("textFieldDidEndEditing")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextFieldDidEndEditingReason) {// if implemented, called in place of textFieldDidEndEditing:
        print("textFieldDidEndEditingWithReason:\(reason)")
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {// return NO to not change text
        print("textFieldShouldChangeCharactersWithReplacementString")
        return true
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {// called when clear button pressed. return NO to ignore (no notifications)
        print("textFieldShouldClear")
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {// called when 'return' key pressed. return NO to ignore.
        print("textFieldShouldReturn")
        return true
    }
    
}











