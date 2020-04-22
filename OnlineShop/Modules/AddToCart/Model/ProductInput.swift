//
//  ProductInput.swift
//  OnlineShop
//
//  Created by Jeyanthinathan on 22/04/2020.
//  Copyright © 2020 Jeyanthinathan. All rights reserved.
//

import Foundation

struct ProductInput {
    
    //MARK: Properties
    
    let productLabel: String?
    let productCount: Int?
    let productPrice: Double?
    let state: String?
    
    var totalPrice: Double? {
        guard let price = productPrice,
            let count = productCount else {
                return 0
        }
        return price * Double(count)
    }
    
    
    //MARK: Public functions
    
    func isValidLabel() -> Bool {
        guard ProductType(label: productLabel) != nil else {
            return false
        }
        
        return true
    }
    
    func isValidCount() -> Bool {
        guard let count = productCount else {
            return false
        }
        
        return count.isValid()
    }
    
    func isValidPrice() -> Bool {
        guard let price = productPrice else {
            return false
        }
        
        return price.isValid()
    }
    
    func isValidState() -> Bool {
        guard State(stateInput: state) != nil else {
            return false
        }
        
        return true
    }
}
