//
//  User.swift
//  VirtualPet
//
//  Created by Sherary Apriliana on 10/04/22.
//

import Foundation

struct User {
    let name: String
    //set target time ada page sendiri?
    //var gamingTargetTime: TimeInterval
    //placeholder variable start
    var isSuccessJob: Bool
    //placeholder variable end
    var maxCoins = 999999
    var minCoins = 1000
    var minLevel = 1
    var maxLevel = 99
    var experienceMeter = 0
    var minAffection = 0
    var maxAffection = 100
    var userCoins: Int
    var userLevel: Int
    var userExperience: Int
    var petAffection: Int
    var isNewUser = true
    var userData: [String: Any]
    // var coins = 1000...999999
    // var levelMeter = 1...99
    // var isSuccess: Bool
    // var experienceMeter = 0
    // var affectionMeter = 0...100
    //var journalCollection: String//JournalCollection
    //var inventory: String //Inventory
    //var activateTimer: String//Timer

    func inputName() -> String {
        if name.count < 3 {
            return "Please enter valid name"
        }

        return name
    }

    func setUpNewUser() -> [String: Any] {
        if isNewUser == true {
            userData[name] = name
            userData[userCoins] = minCoins
            userData[userLevel] = userLevel
            userData[userExperience] = experienceMeter
            userData[petAffection] = minAffection
            userData[isNewUser] = true
        } else {
            userData[isNewUser] = false
        }

        return userData
    }

    func successTimer() {

    }

    func failTimer() {

    }

    func levelRaise() {
        if userExperience >= 100 {
            userData[userLevel] += 1
        }
    }

    func raiseAffection() {
        if isSuccessJob == true {
            userData[petAffection] += 5
        }

        //mission method 1
        if userData[petAffection] == maxAffection {
            //call the mission method here
        }
    }
}

var person = User(name: "Mew")

