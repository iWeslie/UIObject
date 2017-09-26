//
//  WeslieTools.swift
//  Slider
//
//  Created by Weslie on 2017/9/26.
//  Copyright © 2017年 Weslie. All rights reserved.
//

import UIKit

//MARK: - Fill UIView with Pure Color

func createImageWithPureColor(color withColor: UIColor, size withSize: CGSize) -> UIImage {
    
    var imgWidth = withSize.width
    var imgHeight = withSize.height
    //init the frame at the top left corner
    if withSize.width <= 0 { imgWidth = 1 ; print("\"createImageWithPureColor\" -> image width can't be 0, the default value is 1")}
    if withSize.height <= 0 { imgHeight = 1 ; print("\"createImageWithPureColor\" -> image height can't be 0, the default value is 1")}
    let rect = CGRect(x: 0, y: 0, width: imgWidth, height: imgHeight)
    //begin process
    UIGraphicsBeginImageContext(CGSize(width: imgWidth, height: imgHeight))
    //get the context
    let context = UIGraphicsGetCurrentContext()
    context?.setFillColor(withColor.cgColor)
    context?.fill(rect)
    
    let image = UIGraphicsGetImageFromCurrentImageContext()
    //process finished
    UIGraphicsEndImageContext()
    
    return image!
}

