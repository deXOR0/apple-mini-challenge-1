//
//  Journal.swift
//  VirtualPet
//
//  Created by Jonathan Andryana on 10/04/22.
//
import Foundation
import UIKit

struct Journal: Codable {
    let journalID: String
    let startDate : Date
    let endDate : Date
    let feelings : Float
    let gamesPlayed : String
    let gamingExperience : String
}
