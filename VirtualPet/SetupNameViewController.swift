//
//  SetupNameViewController.swift
//  VirtualPet
//
//  Created by Sherary Apriliana on 12/04/22.
//

import UIKit

class SetupNameViewController: UIViewController {
    
    @IBOutlet weak var nameField: UITextField!
    var user: User = User()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Connected")
    }
    
    @IBAction func SaveName(_ sender: UIButton) {
        if let name = nameField.text {
            if name.trimmingCharacters(in: .whitespacesAndNewlines).count > 0 {
                self.user.name = name
                performSegue(withIdentifier: "SetupGameTime", sender: self)
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SetupGameTime" {
            let destinationViewController = segue.destination as? SetupGameHoursViewController
            destinationViewController?.user = self.user
        }
    }
}

