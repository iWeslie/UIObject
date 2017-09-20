//
//  ViewController.swift
//  BlurEffectView
//
//  Created by Weslie on 2017/9/2.
//  Copyright © 2017年 Weslie. All rights reserved.
//

import UIKit

let mainWidth = UIScreen.main.bounds.width
let mainHeight = UIScreen.main.bounds.height

class ViewController: UIViewController {

    @IBOutlet weak var scroll: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imgView = UIImageView(frame: CGRect(x: 0, y: mainHeight, width: mainWidth, height: mainWidth))
        imgView.image = #imageLiteral(resourceName: "photos")
        
        scroll.contentSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 2 + imgView.frame.height)
        scroll.addSubview(imgView)
        
    }
    
}
