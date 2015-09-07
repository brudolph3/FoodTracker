//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Bradley Rudolph on 9/6/15.
//  Copyright © 2015 Bradley Rudolph. All rights reserved.
//

import UIKit

class RatingControl: UIView {

    // MARK: Properties
    var rating = 0;
    var ratingButtons = [UIButton]()
    
    // MARK: Initialization
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        for _ in 0..<5 {
            let button = UIButton(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
            button.backgroundColor = UIColor.redColor()
            button.addTarget(self, action: "ratingButtonTapped:", forControlEvents: .TouchDown)
            ratingButtons += [button]
            addSubview(button)
        }
    }
        
    override func layoutSubviews() {
    
        var buttonFrame = CGRect(x: 0, y: 0, width: 44, height: 44)
        for (index, button) in ratingButtons.enumerate() {
            buttonFrame.origin.x = CGFloat(index * (44 + 5))
            button.frame = buttonFrame
        }
    }
    
    
    // MARK: Button Action
    func ratingButtonTapped(button: UIButton) {
        print("button pressed")
    }

}
