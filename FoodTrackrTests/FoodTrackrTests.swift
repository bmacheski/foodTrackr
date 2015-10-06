//
//  FoodTrackrTests.swift
//  FoodTrackrTests
//
//  Created by Brian Macheski on 10/6/15.
//  Copyright © 2015 Brian Macheski. All rights reserved.
//

import XCTest
@testable import FoodTrackr

class FoodTrackrTests: XCTestCase {
    
    // MARK: FoodTrackr Tests
    
    // Tests to confirm that the Meal init return no name or a negative rating is provided
    func testMealInitiatialization() {
        // Success case
        let potentialItem = Meal(name: "Newest meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        
        // Failure case
        let noName = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName, "Empty name is invalid")
        
        let badRating = Meal(name: "Really bad rating", photo: nil, rating: -1)
        XCTAssertNil(badRating)
        
    }
}
