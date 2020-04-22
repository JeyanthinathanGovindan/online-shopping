//
//  ProductInputTest.swift
//  OnlineShopTests
//
//  Created by Jeyanthinathan on 22/04/2020.
//  Copyright © 2020 Jeyanthinathan. All rights reserved.
//

import XCTest
@testable import OnlineShop

class ProductInputTest: XCTestCase {
    
    func testIfMandatoryInputsAreAvailable() {
        let input = ProductInput(productLabel: "MOBILE",
                                 productCount: 1,
                                 productPrice: 100,
                                 state: "TN")
        XCTAssertTrue(input.isValidLabel(), "Please fill all product/product count")
        XCTAssertTrue(input.isValidCount(), "Please fill all product/product count")
        XCTAssertTrue(input.isValidPrice(), "Please fill all price or invalid price")
        XCTAssertTrue(input.isValidState(), "Please fill all state")
    }
    
}
