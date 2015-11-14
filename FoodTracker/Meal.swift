//
//  Meal.swift
//  FoodTracker
//
//  Created by Qiushi Li on 11/12/15.
//  Copyright © 2015 Apple Inc. All rights reserved.
//

import UIKit
class Meal {
    // MARK: Properties
    var name: String
    var rating: Int
    var photo: UIImage?
    
    init?(name: String, rating: Int, photo: UIImage?) {
        self.name = name
        self.rating = rating
        self.photo = photo
        
        if name.isEmpty || rating < 0 {
            return nil
        }
    }
}
