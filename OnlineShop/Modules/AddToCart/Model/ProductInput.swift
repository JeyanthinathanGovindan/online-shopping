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
    
    
    //MARK: Public functions
    
    func isValidLabel() -> Bool {
        guard ProductType(label: productLabel) != nil else {
            return false
        }
        
        return true
    }
    
    func isValidCount() -> Bool {
        guard let countValue = productCount else {
            return false
        }
        
        return !(countValue == 0)
    }
    
    func isValidPrice() -> Bool {
        guard let priceValue = productPrice else {
            return false
        }
        
        return !(priceValue == 0.0)
    }
    
    func isValidState() -> Bool {
        guard State(stateInput: state) != nil else {
            return false
        }
        
        return true
    }
}
