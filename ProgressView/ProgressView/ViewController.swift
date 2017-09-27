//
//  ViewController.swift
//  ProgressView
//
//  Created by Weslie on 27/09/2017.
//  Copyright © 2017 Weslie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var progressingDemostrateProgressView: UIProgressView!
    
    @IBAction func progressingUpButton(_ sender: UIButton) {
        progressingDemostrateProgressView.setProgress(1, animated: true)
        progressingDemostrateProgressView.progressViewStyle = .bar
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
   
    }
    
    
}

