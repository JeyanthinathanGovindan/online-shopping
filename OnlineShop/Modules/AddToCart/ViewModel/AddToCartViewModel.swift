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
    
    let input: ProductInput
}

extension AddToCartViewModel: TaxCalculator {
    
    func calculateTaxAmount() -> Double? {
        guard let totalPrice = input.totalPrice,
            let state = State(stateInput: input.state),
            let taxRate = state.taxRate else {
                return nil
        }
        
        return (totalPrice * taxRate)/100
    }
    
}
