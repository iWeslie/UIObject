//
//  ViewController.swift
//  Slider
//
//  Created by Weslie on 2017/9/26.
//  Copyright © 2017年 Weslie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //navigation controller shadow image
        self.navigationController?.navigationBar.shadowImage = createImageWithPureColor(color: .groupTableViewBackground, size: CGSize(width: 1, height: 1))
        
    }

}

