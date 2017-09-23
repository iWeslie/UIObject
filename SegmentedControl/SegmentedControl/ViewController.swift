//
//  ViewController.swift
//  SegmentedControl
//
//  Created by Weslie on 2017/9/23.
//  Copyright © 2017年 Weslie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dividerImage: UISegmentedControl!
    @IBOutlet weak var backgroundImage: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dividerImage.setDividerImage(#imageLiteral(resourceName: "compass_tiny"), forLeftSegmentState: .normal, rightSegmentState: .normal, barMetrics: .default)
        
        backgroundImage.setDividerImage(UIImage(), forLeftSegmentState: .normal, rightSegmentState: .normal, barMetrics: .default)
        backgroundImage.setBackgroundImage(#imageLiteral(resourceName: "compass_tiny"), for: .normal, barMetrics: .default)
        
    }

}

