//
//  ProductType.swift
//  OnlineShop
//
//  Created by Jeyanthinathan on 22/04/2020.
//  Copyright © 2020 Jeyanthinathan. All rights reserved.
//

import Foundation

enum ProductType: String {
    case laptop
    case mobile
    case tablet
    
    //MARK: Initialisers
    
    init?(label: String?) {
        guard let labelValue = label else {
            return nil
        }
        switch labelValue.lowercased() {
        case ProductType.laptop.rawValue:
            self = .laptop
        case ProductType.mobile.rawValue:
            self = .mobile
        case ProductType.tablet.rawValue:
            self = .tablet
        default:
            return nil
        }
    }
}
