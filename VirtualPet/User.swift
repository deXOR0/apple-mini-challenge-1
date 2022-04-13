//
//  User.swift
//  VirtualPet
//
//  Created by Sherary Apriliana on 10/04/22.
//

import Foundation

class User {
    var name: String
    var isNewUser: Bool
    let maxCoins = 99999
    let minCoins = 50
    let maxLevel = 10
    var userCoins: Int
    var userLevel: Int
    var userExperience: Int
    var lastLoggedIn: Date
    var gamingQuotaLeft: Int
    var gamingTargetTime: Int
    var journalCollection: JournalCollection
    var inventory: Inventory
    let userDefault: UserDefaults = UserDefaults.standard
    var USER_KEY = "user_key"

    init() {
        let saveUser = userDefault.object(forKey: USER_KEY) as? User
        if let user = saveUser {
            self = user
        }
        resetGamingQuota()
        save()
    }

    func save() {
        userDefault.set(self, forKey: USER_KEY)
    }

    func resetGamingQuota() {
        if !Calendar.current.isDateInToday(self.lastLoggedIn){
            self.gamingQuotaLeft = self.gamingTargetTime
        }
        self.lastLoggedIn = Date()
    }

    func getLastWeekActivity() -> [TimePlayed] {
        //get keys from journal collection, sort arr of keys desc, ambil 7 elemen pertama

    }
}