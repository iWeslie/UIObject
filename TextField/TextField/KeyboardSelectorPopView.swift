//
//  SelectorPopView.swift
//  TextField
//
//  Created by Weslie on 2017/9/24.
//  Copyright © 2017年 Weslie. All rights reserved.
//

import UIKit

class KeyboardSelectorPopView: UITableViewController {
    
    var traitToShow: Array<String>?
    
    var merticsNumber: Int?
    
    //receive the segue from the firstViewController
    var retSegue: UIStoryboardSegue?
    
    var segueID: String = ""
    
    //pre calculate something
    override func viewWillAppear(_ animated: Bool) {
        //receive the source identifier
        segueID = retSegue!.identifier!
        //chose the content to show through the identifier
        switch segueID {
        case "type":
            traitToShow = keyboardTypeName
        case "appearance":
            traitToShow = keyboardAppearanceName
        case "return":
            traitToShow = returnKeyTypeName
        case "autocap":
            traitToShow = autoCapitalizationName
        default:
            break
        }
        //calculate the row number
        merticsNumber = self.calculateMerticsNumber(traitToShow!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.separatorStyle = .none
        
    }
    
    
    func calculateMerticsNumber(_ triatName: Array<String>) -> Int {
        return triatName.count
    }
    
    override func viewWillLayoutSubviews() {
        preferredContentSize.width = 250
        var height = tableView.contentSize.height
        if height > 290 { height = 290 }
        preferredContentSize.height = height
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return merticsNumber!
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BtnCell") as! SelectorCell
        cell.merticsName.text = traitToShow?[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 36
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedItemNumber = indexPath.row
        //receive the firstViewController
        let sourceVC = retSegue?.source as! UITextInputTraitsViewController
        //pass data to the firstViewController
        switch segueID {
        case "type":
            switch selectedItemNumber {
            case 0: sourceVC.keyboardTypeDemostrateTF.keyboardType = .default
            case 1: sourceVC.keyboardTypeDemostrateTF.keyboardType = .asciiCapable
            case 2: sourceVC.keyboardTypeDemostrateTF.keyboardType = .numbersAndPunctuation
            case 3: sourceVC.keyboardTypeDemostrateTF.keyboardType = .URL
            case 4: sourceVC.keyboardTypeDemostrateTF.keyboardType = .numberPad
            case 5: sourceVC.keyboardTypeDemostrateTF.keyboardType = .phonePad
            case 6: sourceVC.keyboardTypeDemostrateTF.keyboardType = .namePhonePad
            case 7: sourceVC.keyboardTypeDemostrateTF.keyboardType = .emailAddress
            case 8: sourceVC.keyboardTypeDemostrateTF.keyboardType = .decimalPad
            case 9: sourceVC.keyboardTypeDemostrateTF.keyboardType = .twitter
            case 10: sourceVC.keyboardTypeDemostrateTF.keyboardType = .webSearch
            case 11: sourceVC.keyboardTypeDemostrateTF.keyboardType = .asciiCapable
            default: sourceVC.keyboardTypeDemostrateTF.keyboardType = .default
            }
            self.dismiss(animated: true) {
                sourceVC.keyboardTypeDemostrateTF.becomeFirstResponder()
            }
        case "appearance":
            switch selectedItemNumber {
            case 0: sourceVC.keyboardAppearanceDemostrateTF.keyboardAppearance = .alert
            case 1: sourceVC.keyboardAppearanceDemostrateTF.keyboardAppearance = .dark
            case 2: sourceVC.keyboardAppearanceDemostrateTF.keyboardAppearance = .default
            case 3: sourceVC.keyboardAppearanceDemostrateTF.keyboardAppearance = .light
            default: sourceVC.keyboardAppearanceDemostrateTF.keyboardAppearance = .default
            }
            self.dismiss(animated: true) {
                sourceVC.keyboardAppearanceDemostrateTF.becomeFirstResponder()
            }
        case "return":
            switch selectedItemNumber {
            case 0: sourceVC.returnKeyTypeDemostrateTF.returnKeyType = .continue
            case 1: sourceVC.returnKeyTypeDemostrateTF.returnKeyType = .default
            case 2: sourceVC.returnKeyTypeDemostrateTF.returnKeyType = .done
            case 3: sourceVC.returnKeyTypeDemostrateTF.returnKeyType = .emergencyCall
            case 4: sourceVC.returnKeyTypeDemostrateTF.returnKeyType = .go
            case 5: sourceVC.returnKeyTypeDemostrateTF.returnKeyType = .google
            case 6: sourceVC.returnKeyTypeDemostrateTF.returnKeyType = .join
            case 7: sourceVC.returnKeyTypeDemostrateTF.returnKeyType = .next
            case 8: sourceVC.returnKeyTypeDemostrateTF.returnKeyType = .route
            case 9: sourceVC.returnKeyTypeDemostrateTF.returnKeyType = .send
            case 10: sourceVC.returnKeyTypeDemostrateTF.returnKeyType = .yahoo
            default: sourceVC.returnKeyTypeDemostrateTF.returnKeyType = .default
            }
            self.dismiss(animated: true) {
                sourceVC.returnKeyTypeDemostrateTF.becomeFirstResponder()
            }
        case "autocap":
            switch selectedItemNumber {
            case 0: sourceVC.autoCapitalizationDemostrateTF.autocapitalizationType = .none
            case 1: sourceVC.autoCapitalizationDemostrateTF.autocapitalizationType = .words
            case 2: sourceVC.autoCapitalizationDemostrateTF.autocapitalizationType = .sentences
            case 3: sourceVC.autoCapitalizationDemostrateTF.autocapitalizationType = .allCharacters
            default: sourceVC.autoCapitalizationDemostrateTF.autocapitalizationType = .none
            }
            self.dismiss(animated: true, completion: {
                sourceVC.autoCapitalizationDemostrateTF.becomeFirstResponder()
            })
        default: break
        }
        
        
    }

    
}

