//
//  FriendType .swift
//  Let's Be Friends
//
//  Created by    wuniutian on 10/7/22.
//

import Foundation

enum FriendType: String, Codable {
    case normal = "normal"
    case fire = "fire"
    case grass = "grass"
    case electric = "electric"
    case ice = "ice"
    case water = "water"
    
    
    func getSymbolName() -> String {
        switch self {
        case .normal:
            return "face.smiling"
        case .fire:
            return "flame"
        case .grass:
            return "leaf"
        case .electric:
            return "bolt"
        case .ice:
            return "snowflake"
        case .water:
            return "drop"
        }
    }
}
