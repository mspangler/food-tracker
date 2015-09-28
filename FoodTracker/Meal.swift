//
//  Meal.swift
//  FoodTracker
//
//  Created by Mark Spangler on 9/25/15.
//  Copyright © 2015 Mark Spangler. All rights reserved.
//

import UIKit

class Meal {
    
    // MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    init?(name: String, photo: UIImage?, rating: Int) {

        // Initialize stored properties.
        self.name = name
        self.photo = photo
        self.rating = rating

        // Initialization should fail if there is no name or if the rating is negative.
        if self.name.isEmpty || self.rating < 0 {
            return nil
        }
    }
}
