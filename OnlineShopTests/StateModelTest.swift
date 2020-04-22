//
//  StateModelTest.swift
//  OnlineShopTests
//
//  Created by Jeyanthinathan on 22/04/2020.
//  Copyright © 2020 Jeyanthinathan. All rights reserved.
//

import XCTest
@testable import OnlineShop

class StateModelTest: XCTestCase {
    
    func testIfStateTaxRatepresent() {
        let availableStates = State.allCases
        
        availableStates.forEach {
            XCTAssertNotNil($0.taxRate, "Tax rate not available for \($0.rawValue)")
        }
    }
    
}
