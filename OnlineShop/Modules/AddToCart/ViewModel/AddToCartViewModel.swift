//
//  AddToCartViewModel.swift
//  OnlineShop
//
//  Created by Jeyanthinathan on 22/04/2020.
//  Copyright © 2020 Jeyanthinathan. All rights reserved.
//

import Foundation

struct AddToCartViewModel {
    
    //MARK: Properties
    
    let input: ProductInput?
    
    
    //MARK: Public functions
    
    func calculateFinalPrice() -> Double? {
        guard let totalPrice = input?.totalPrice,
            let tax = calculateTaxAmount(),
            let discount = calculateDiscountAmount() else {
                return nil
        }
        return totalPrice + tax - discount
    }
}

extension AddToCartViewModel: TaxCalculator {
    
    func calculateTaxAmount() -> Double? {
        guard let totalPrice = input?.totalPrice,
            let state = State(stateInput: input?.state),
            let taxRate = state.taxRate else {
                return nil
        }
        
        return (totalPrice * taxRate)/100
    }
    
}

extension AddToCartViewModel: DiscountCalculator {
    
    func calculateDiscountAmount() -> Double? {
        guard let totalPrice = input?.totalPrice else {
            return nil
        }
        var percentage = 0.0
        switch totalPrice {
        case 1000..<5000:
            percentage = 3
        case 5000..<7000:
            percentage = 5
        case 7000..<10000:
            percentage = 7
        case 10000..<50000:
            percentage = 10
        case 50000...:
            percentage = 15
        default:
            percentage = 0
        }
        return (percentage * totalPrice)/100
    }
}
