//
//  Meal.swift
//  FoodTrackr
//
//  Created by Brian Macheski on 10/6/15.
//  Copyright © 2015 Brian Macheski. All rights reserved.
//

import UIKit

class Meal {
    // MARK: Properties
    var name: String
    var photo: UIImage?
    var rating: Int
    
    init?(name: String, photo: UIImage?, rating: Int) {
        self.name = name
        self.photo = photo
        self.rating = rating
        
        if name.isEmpty || rating < 0 {
            return nil
        }
    }
}