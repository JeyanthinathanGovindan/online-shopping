//
//  AddToCartViewModelTest.swift
//  OnlineShopTests
//
//  Created by Jeyanthinathan on 22/04/2020.
//  Copyright © 2020 Jeyanthinathan. All rights reserved.
//

import XCTest
@testable import OnlineShop

class AddToCartViewModelTest: XCTestCase {
    
    func testTaxCalculation() {
        let input = ProductInput(productLabel: "MOBILE",
                                 productCount: 1,
                                 productPrice: 100,
                                 state: "UT")
        let viewModel = AddToCartViewModel(input: input)
        let tax = viewModel.calculateTaxAmount()
        print("Tax calculated is \(String(describing: tax))")
        XCTAssertNotNil(tax, "Tax cannot be deduced")
    }
    
    func testDiscountCalculation() {
        let input = ProductInput(productLabel: "MOBILE",
                                 productCount: 3,
                                 productPrice: 6000,
                                 state: "UT")
        let viewModel = AddToCartViewModel(input: input)
        
        let discount = viewModel.calculateDiscountAmount()
        print("Discount is \(String(describing: discount))")
        XCTAssertFalse(discount == 0, "Discount not applicable")
    }
}
