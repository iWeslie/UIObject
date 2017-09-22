//
//  Extension+UIButton.swift
//  Button
//
//  Created by Weslie on 2017/9/21.
//  Copyright © 2017年 Weslie. All rights reserved.
//

import UIKit

extension UIButton {
    enum Edge {
        case right
        case top
//        case button
        case middle
    }
    func moveImage(to edge: Edge) {
        switch edge {
        case .right:
            titleEdgeInsets = UIEdgeInsets(top: 0, left: -intrinsicContentSize.width - (imageView?.intrinsicContentSize.width)! + (titleLabel?.intrinsicContentSize.width)!, bottom: 0, right: 0)
            imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: -intrinsicContentSize.width - (titleLabel?.intrinsicContentSize.width)! + (imageView?.intrinsicContentSize.width)!)
        case .top:
            
            //in this case the imageView and titleLabel will beyond the button's click area if it is not enough
            titleEdgeInsets = UIEdgeInsets(top: 0, left: -imageView!.intrinsicContentSize.width, bottom: -((imageView?.intrinsicContentSize.height)! + 4.0 / 2.0), right: 0)
            imageEdgeInsets = UIEdgeInsetsMake(-(titleLabel!.intrinsicContentSize.height + 4.0 / 2.0), 0, 0, -titleLabel!.intrinsicContentSize.width)
            
        case .middle:
            titleEdgeInsets = UIEdgeInsets(top: 0, left: -(imageView?.intrinsicContentSize.width)!, bottom: 0, right: 0)
            imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: -(titleLabel?.intrinsicContentSize.width)!)

        
        }
        
    }
}
