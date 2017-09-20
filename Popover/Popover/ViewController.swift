//
//  ViewController.swift
//  Popover
//
//  Created by Weslie on 2017/9/3.
//  Copyright © 2017年 Weslie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var width: UITextField!
    @IBOutlet weak var height: UITextField!

    
    var size: CGSize = CGSize.zero
    
    @IBAction func setWH(_ sender: UIButton) {
        size.width = StringToFloat(str: width.text!)
        size.height = StringToFloat(str: height.text!)
        
    }
    
    @IBOutlet weak var btn: UIButton!
    
    @IBAction func btnTap(_ sender: UIButton) {
        let pop = PopViewController()
        //msut
        pop.modalPresentationStyle = .popover
        //use adaptivePresentationStyle to not show fullscreen
        pop.popoverPresentationController?.delegate = self
        //where to pop
        pop.popoverPresentationController?.sourceView = btn
        pop.popoverPresentationController?.sourceRect = btn.bounds
        //the arrow direction of the popover view controller
        pop.popoverPresentationController?.permittedArrowDirections = .down
        //the size of the view popovered
        pop.preferredContentSize = CGSize(width: 300, height: 100)
        self.present(pop, animated: true, completion: nil)
        
    }
    

    @IBAction func alert(_ sender: UIButton) {
        let alert = UIAlertController(title: "Alert Title", message: "Message", preferredStyle: .alert)
        let deleteAction = UIAlertAction(title: "destructive", style: .destructive)
        let okAction = UIAlertAction(title: "default", style: .default)
        let cancelAction = UIAlertAction(title: "cancel", style: .cancel)
        alert.addAction(deleteAction)
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        
        //When in iPhone, it will dissmiss the following two lines' code automatically
//        alert.popoverPresentationController?.sourceView = view
//        alert.popoverPresentationController?.sourceRect = sender.frame

        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func actionSheet(_ sender: UIButton) {
        let alert = UIAlertController(title: "Alert Title", message: "Message", preferredStyle: .actionSheet)
        let deleteAction = UIAlertAction(title: "destructive", style: .destructive)
        let okAction = UIAlertAction(title: "default", style: .default)
        //cancel action did not support in the iPad
        let cancelAction = UIAlertAction(title: "cancel", style: .cancel)
        alert.addAction(deleteAction)
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        
        //When in iPad, The modalPresentationStyle of a UIAlertController with this style is UIModalPresentationPopover. You must provide location information for this popover through the alert controller's popoverPresentationController. You must provide either a sourceView and sourceRect or a barButtonItem.  If this information is not known when you present the alert controller, you may provide it in the UIPopoverPresentationControllerDelegate method -prepareForPopoverPresentation
 
        alert.popoverPresentationController?.sourceView = sender
        alert.popoverPresentationController?.sourceRect = CGRect.zero
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBOutlet weak var action: UIBarButtonItem!
    @IBAction func actionTap(_ sender: Any) {
        
        let pop = PopViewController()
        //msut
        pop.modalPresentationStyle = .popover
        //use adaptivePresentationStyle to not show fullscreen
        pop.popoverPresentationController?.delegate = self
        let popover: UIPopoverPresentationController = pop.popoverPresentationController!
        popover.barButtonItem = action
        pop.preferredContentSize = size
        self.present(pop, animated: true, completion: nil)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func StringToFloat(str: String) -> CGFloat{
        
        let string = str
        var cgFloat: CGFloat = 0
        if let doubleValue = Double(string){
            cgFloat = CGFloat(doubleValue)
        }
        return cgFloat
    }

}

extension ViewController: UIPopoverPresentationControllerDelegate {
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        //set none will disable popover fullscreen
        return .none
    }
    
}











