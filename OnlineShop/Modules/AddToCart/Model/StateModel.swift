//
//  StateModel.swift
//  OnlineShop
//
//  Created by Jeyanthinathan on 22/04/2020.
//  Copyright © 2020 Jeyanthinathan. All rights reserved.
//

import Foundation

enum State: String {
    case ut
    case nv
    case tx
    case al
    case ca
    
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
