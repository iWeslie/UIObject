//
//  ViewController.swift
//  ActivityIndicatorView
//
//  Created by Weslie on 27/09/2017.
//  Copyright © 2017 Weslie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var animatingAIView: UIActivityIndicatorView!
    @IBAction func startOrStopAnimating(_ sender: UIButton) {
        if animatingAIView.isAnimating == false {
            animatingAIView.startAnimating()
        } else {
            animatingAIView.stopAnimating()
        }
    }
    
    @IBOutlet weak var hideWhenAnimatingStopAIDemostrateView: UIActivityIndicatorView!
    @IBAction func hideWhenStop(_ sender: UIButton) {
        hideWhenAnimatingStopAIDemostrateView.stopAnimating()
        hideWhenAnimatingStopAIDemostrateView.hidesWhenStopped = true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
}

