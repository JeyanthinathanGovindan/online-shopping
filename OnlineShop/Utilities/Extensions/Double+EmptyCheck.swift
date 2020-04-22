//
//  Double+EmptyCheck.swift
//  OnlineShop
//
//  Created by Jeyanthinathan on 22/04/2020.
//  Copyright © 2020 Jeyanthinathan. All rights reserved.
//

import Foundation

extension Double {
    
    func isValid() -> Bool {
        return !(self == 0.0)
    }
}
