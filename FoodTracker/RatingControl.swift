//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Dzmitry Misiuk on 10/15/16.
//  Copyright © 2016 JLife. All rights reserved.
//

import UIKit

class RatingControl: UIView {
    
    
    // MARK: Properties
    
    var rating =  0 {
        didSet {
            setNeedsLayout()
        }
    }
    var ratingButtons = [UIButton]()
    
    // MARK: Contstants
    let spacing = 5
    let starCount = 5
    let buttonSize = 36

    // MARK: Initialization
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let filledStarImage = UIImage(named: "FilledStar")
        let emptyStarImage = UIImage(named: "EmptyStar")
        
        for _ in 0..<starCount {
            let button = UIButton()
        
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped), for: .touchDown)
            
            button.setImage(emptyStarImage, for: .normal)
            button.setImage(filledStarImage, for: .selected)
            button.setImage(filledStarImage, for: [.highlighted, .selected])
            button.adjustsImageWhenHighlighted = false
            ratingButtons += [button]
            
            addSubview(button)
        }
    }
    
    override var intrinsicContentSize: CGSize  {
        let buttonSize = Int(frame.size.height)
        let width = (buttonSize * starCount) + (spacing * (starCount - 1))
        
        return CGSize(width: width, height: buttonSize)
    }
    
    override func layoutSubviews() {
        var buttonFrame = CGRect(x: 0, y: 0, width: buttonSize, height: buttonSize)
        
        // Offset each button's origin by the length of the button plus spacing.
        for (index, button) in ratingButtons.enumerated() {
            buttonFrame.origin.x = CGFloat(index * (buttonSize + spacing))
            button.frame = buttonFrame
        }
        updateButtonSelectionStates()
    }
    
    // MARK: Button Action
    func ratingButtonTapped(button: UIButton) {
        self.rating = ratingButtons.index(of: button)! + 1
        updateButtonSelectionStates()
    }
    
    func updateButtonSelectionStates() {
        for (index, button)  in ratingButtons.enumerated() {
            let isSelected = index < rating
            button.isSelected = isSelected
        }
    }
    

}
