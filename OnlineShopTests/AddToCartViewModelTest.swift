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
        print("Tax calculated is \(tax ?? 0.0)")
        XCTAssertNotNil(tax, "Tax cannot be deduced")
    }
    
    func testDiscountCalculation() {
        let input = ProductInput(productLabel: "MOBILE",
                                 productCount: 3,
                                 productPrice: 6000,
                                 state: "UT")
        let viewModel = AddToCartViewModel(input: input)
        let discount = viewModel.calculateDiscountAmount()
        print("Discount is \(discount ?? 0.0)")
        XCTAssertFalse(discount == 0, "Discount not applicable")
    }
    
    func testFinalPriceCalculation() {
        let input = ProductInput(productLabel: "MOBILE",
                                 productCount: 3,
                                 productPrice: 6000,
                                 state: "UT")
        let viewModel = AddToCartViewModel(input: input)
        let finalPrice = viewModel.calculateFinalPrice()
        print("Final Cart Price is \(finalPrice ?? 0.0)")
        XCTAssertNotNil(finalPrice, "Final price cannot be deduced")
    }
}
