//
//  User.swift
//  VirtualPet
//
//  Created by Sherary Apriliana on 10/04/22.
//

import Foundation

class User {
    struct BaseStats {
        let name: String
        var isSuccess: Bool
        let maxCoins = 99999
        let minCoins = 50
        let maxLevel = 10
    }

    var userStats: [String: Any]

    init() {
        self.userStats = userStats
    }
}


