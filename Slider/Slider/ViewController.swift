//
//  ViewController.swift
//  Slider
//
//  Created by Weslie on 2017/9/26.
//  Copyright © 2017年 Weslie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    /*
     The following steps are required to add a slider to your interface:
     
     1. Specify the range of values the slider represents.
     
     2. Optionally, configure the appearance of the slider with appropriate tint colors, and limit images.
     
     3. Connect one or more action methods to the slider.
     
     4. Set up Auto Layout rules to govern the size and position of the slider in your interface.
     
     When debugging issues with sliders, follow these tips to avoid common pitfalls:
     
     1. Use either a custom tint color or a custom image, but not both.
     
     2. The current value must be between the minimum and maximum values.
     
     3. Set custom images for all control states.
     */
    
    @IBOutlet weak var simpleSlider: UISlider!
    @IBAction func doSomethig(_ sender: UISlider, forEvent event: UIEvent) {
        
        simpleSlider.isContinuous = false
        print("valueChanged")
        
    }
    
    @IBOutlet weak var SliderWithCoreAttributes: UISlider!
    
    @IBAction func sliderTouchToPrintLimitValue(_ sender: UISlider) {
        print("Value Minimum = \(SliderWithCoreAttributes.minimumValue)")
        print("Value Maximum = \(SliderWithCoreAttributes.maximumValue)")
    }
    @IBAction func slideToPrintValue(_ sender: UISlider) {

        print("Value Current = \(SliderWithCoreAttributes.value)")
    }
    
    @IBOutlet weak var sliderWithCustomImages: UISlider!
    @IBOutlet weak var sliderWithTintColors: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //navigation controller shadow image
        self.navigationController?.navigationBar.shadowImage = createImageWithPureColor(color: .groupTableViewBackground, size: CGSize(width: 1, height: 1))
        
        //customize the appearance images
        sliderWithCustomImages.minimumValueImage = #imageLiteral(resourceName: "minimumValueImage")
        sliderWithCustomImages.maximumValueImage = #imageLiteral(resourceName: "maximumValueImage")
        sliderWithCustomImages.setThumbImage(#imageLiteral(resourceName: "siri_tiny"), for: .normal)
        //the minimun Image will stretch automatically
        sliderWithCustomImages.setMinimumTrackImage(#imageLiteral(resourceName: "RainbowSlider"), for: .normal)
        sliderWithCustomImages.setMaximumTrackImage(#imageLiteral(resourceName: "RainbowSlider"), for: .normal)
        
        /*
         Sliders automatically adjust to the appropriate interface direction, ensuring that the minimum end of the slider is always at the leading end and the maximum end at the trailing end. If you override minimumValueImageRect(forBounds:) or maximumValueImageRect(forBounds:) in a subclass of UISlider, be sure to take the user interface layout direction into account.
         */

        
        //tint the slider
        sliderWithTintColors.minimumTrackTintColor = UIColor.red
        sliderWithTintColors.thumbTintColor = UIColor.lightGray
        
    }

}

