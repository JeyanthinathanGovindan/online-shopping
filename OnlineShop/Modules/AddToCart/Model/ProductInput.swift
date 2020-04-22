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
    
    
    //MARK: Public functions
    
    func isValidLabel() -> Bool {
        guard let label = productLabel else {
            return false
        }
        
        return !label.isEmpty
    }
}
