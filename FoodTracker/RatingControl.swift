//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Mark Spangler on 9/21/15.
//  Copyright © 2015 Mark Spangler. All rights reserved.
//

import UIKit

class RatingControl: UIView {
    
    // MARK: Properties
    
    var rating = 0
    var ratingButtons = [UIButton]()
    var spacing = 5
    var stars = 5
    
    // MARK: Initialization
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        for _ in 0..<self.stars {
            let button = UIButton()
            button.backgroundColor = UIColor.redColor()
            
            button.addTarget(self, action: "ratingButtonTapped:", forControlEvents: .TouchDown)
            
            self.ratingButtons += [button]
            
            self.addSubview(button)
        }
    }
    
    override func intrinsicContentSize() -> CGSize {
        let height = Int(frame.size.height)
        let width = (height + self.spacing) * self.stars
        
        return CGSize(width: width, height: height)
    }
    
    override func layoutSubviews() {
        
        // Set the button's width and height to a square the size of the frame's height.
        let buttonSize = Int(frame.size.height)

        var buttonFrame = CGRect(x: 0, y: 0, width: buttonSize, height: buttonSize)
        
        // Offset each button's origin by the length of the button plus spacing.
        for (index, button) in ratingButtons.enumerate() {
            buttonFrame.origin.x = CGFloat(index * (buttonSize + self.spacing))
            button.frame = buttonFrame
        }
    }
    
    // MARK: Button Action
    
    func ratingButtonTapped(button: UIButton) {
        print("Button pressed 👍")
    }
    
}
