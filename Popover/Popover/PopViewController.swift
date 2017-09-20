//
//  PopViewController.swift
//  Popover
//
//  Created by Weslie on 2017/9/3.
//  Copyright © 2017年 Weslie. All rights reserved.
//

import UIKit

class PopViewController: UIViewController {
    
    @IBOutlet weak var dismissLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissVC))
        dismissLabel.addGestureRecognizer(tap)

    }
    
    @objc func dismissVC() {
        self.dismiss(animated: true, completion: nil)
    }

}
