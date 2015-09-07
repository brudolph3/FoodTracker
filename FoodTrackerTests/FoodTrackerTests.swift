//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Bradley Rudolph on 8/27/15.
//  Copyright (c) 2015 Bradley Rudolph. All rights reserved.
//

import UIKit
import XCTest

class FoodTrackerTests: XCTestCase {
    
    // MARK FoodTracker Tests
    func testMealInitialization() {
        
        // Success Case
        let potentialItem = Meal(name: "newest meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        
        // Failure Case
        let noName = Meal(name: "", photo: nil, rating: 1)
        XCTAssertNil(noName, "Empty name is invalid")
        
        let badRating = Meal(name: "Bad Rating", photo: nil, rating: -1)
        XCTAssertNil(badRating, "negative ratings are bad, must be positive")
    }
}
