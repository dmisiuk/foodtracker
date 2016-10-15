//
//  Meal.swift
//  FoodTracker
//
//  Created by Dzmitry Misiuk on 10/15/16.
//  Copyright © 2016 JLife. All rights reserved.
//

import Foundation
import UIKit

class Meal {
    // MARK: Properties
    
    var photo: String
    var image: UIImage?
    var rating: Int

    // MARK: Initialization
    init?(name: String, photo: UIImage?, rating: Int) {
        self.photo = name
        self.image = photo
        self.rating = rating
        if name.isEmpty || rating < 0 {
            return nil
        }
    }
}
