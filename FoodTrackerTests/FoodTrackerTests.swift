//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Qiushi Li on 11/10/15.
//  Copyright © 2015 Apple Inc. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    // MARK: FoodTracker Tests
    
    // Test that the meal initializer returns when no meal name or negative rating provided
    func testMealInitialization() {
        // Success case
        let potentialMeal = Meal(name: "Newst meal", rating: 5, photo: nil)
        XCTAssert((potentialMeal) != nil)
        
        // Failure case
        let noName = Meal(name: "", rating: 0, photo: nil)
        XCTAssertNil(noName, "Empty name is invalid")
        
        let badRating = Meal(name: "Really bad rating", rating: -1, photo: nil)
        XCTAssertNil(badRating)
    }
}
