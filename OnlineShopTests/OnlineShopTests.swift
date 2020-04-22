//
//  OnlineShopTests.swift
//  OnlineShopTests
//
//  Created by Jeyanthinathan on 21/04/2020.
//  Copyright © 2020 Jeyanthinathan. All rights reserved.
//

import XCTest
@testable import OnlineShop

class OnlineShopTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testIfMandatoryInputsAreAvailable() {
        let input = ProductInput(productLabel: "MOBILE",
                                productCount: 1)
        XCTAssertTrue(input.isValidLabel(), "Please fill all product/product count")
        XCTAssertTrue(input.isValidCount(), "Please fill all product/product count")
    }

}
