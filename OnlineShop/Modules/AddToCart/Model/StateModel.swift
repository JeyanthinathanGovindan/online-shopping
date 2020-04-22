//
//  StateModel.swift
//  OnlineShop
//
//  Created by Jeyanthinathan on 22/04/2020.
//  Copyright © 2020 Jeyanthinathan. All rights reserved.
//

import Foundation

enum State: String, CaseIterable {
    case ut
    case nv
    case tx
    case al
    case ca
    
    //MARK: Properties
    
    var taxRate: Double? {
        switch self {
        case .ut:
            return 6.85
        case .nv:
            return 8.00
        case .tx:
            return 6.25
        case .al:
            return 4.00
        case .ca:
            return 8.25
        }
    }
    
    //MARK: Initialisers
    
    init?(stateInput: String?) {
        guard let state = stateInput else {
            return nil
        }
        switch state.lowercased() {
        case State.ut.rawValue:
            self = .ut
        case State.nv.rawValue:
            self = .nv
        case State.tx.rawValue:
            self = .tx
        case State.al.rawValue:
            self = .al
        case State.ca.rawValue:
            self = .ca
        default:
            return nil
        }
    }
}
