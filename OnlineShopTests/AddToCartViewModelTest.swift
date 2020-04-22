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
        
        print("Tax calculated is \(String(describing: viewModel.calculateTaxAmount()))")
        XCTAssertNotNil(viewModel.calculateTaxAmount(), "Tax cannot be deduced")
    }
}
