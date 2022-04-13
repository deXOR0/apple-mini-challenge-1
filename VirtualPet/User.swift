//
//  User.swift
//  VirtualPet
//
//  Created by Sherary Apriliana on 10/04/22.
//

import Foundation

class User {
    var name: String = ""
    var isNewUser: Bool = true
    let maxCoins = 99999
    let minCoins = 50
    let maxLevel = 10
    var userCoins: Int = 0
    var userLevel: Int = 0
    var userExperience: Int = 0
    var lastLoggedIn: Date = Date()
    var gamingQuotaLeft: Int = 0
    var gamingTargetTime: Int = 0
    var journalCollection: JournalCollection = JournalCollection()
    var inventory: Inventory = Inventory()
    let userDefault: UserDefaults = UserDefaults.standard
    let USER_KEY = "user_key"

    func loadSavedUser() -> Bool {
        let savedUser = userDefault.object(forKey: USER_KEY) as? User
        if let user = savedUser {
            self.name = user.name
            self.isNewUser = false
            self.userCoins = user.userCoins
            self.userLevel = user.userLevel
            self.userExperience = user.userExperience
            self.lastLoggedIn = user.lastLoggedIn
            self.gamingQuotaLeft = user.gamingQuotaLeft
            self.gamingTargetTime = user.gamingTargetTime
            self.journalCollection = user.journalCollection
            self.inventory = user.inventory
            resetGamingQuota()
            save()
            return true
        }
        return false
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
        var activity = [TimePlayed]()
        
        for i in stride(from: 6, to: -1, by: -1) {
            if let date = Calendar.current.date(byAdding: .day, value: -i, to: Date()) {
                let key = Calendar.current.startOfDay(for: date)
                var totalTime = 0
                if let journalArray = self.journalCollection.journals[key] {
                    journalArray.forEach { j in
                        let duration = j.endDate.timeIntervalSince(j.startDate)
                        totalTime += Int(duration)
                    }
                }
                activity.append(TimePlayed(date: key, playTimeInSeconds: totalTime))
            }
        }
        
        return activity
    }
}
