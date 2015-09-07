//
//  meal.swift
//  FoodTracker
//
//  Created by Bradley Rudolph on 9/7/15.
//  Copyright © 2015 Bradley Rudolph. All rights reserved.
//

import UIKit

class Meal {
    // MARK Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    // MARK Initialization
    
    init?(name: String, photo: UIImage?, rating: Int) {
        // initialize stored properties
        self.name = name
        self.photo = photo
        self.rating = rating
        
        // initialization fails if name is empty or rating is negative
        if name.isEmpty || rating < 0 {
            return nil
        }
    }
}
