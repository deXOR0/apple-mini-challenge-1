//
//  SetupGameHoursViewController.swift
//  VirtualPet
//
//  Created by Sherary Apriliana on 13/04/22.
//

import UIKit

class SetupGameHoursViewController: UIViewController {
    @IBOutlet weak var gameHours: UIDatePicker!
    let GAME_HOURS = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func SaveGameHours(_ sender: UIButton) {
        GAME_HOURS.set(gameHours, forKey: "online_time")
        print(GAME_HOURS)
    }
}
