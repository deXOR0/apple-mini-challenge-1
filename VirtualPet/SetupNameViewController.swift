//
//  SetupNameViewController.swift
//  VirtualPet
//
//  Created by Sherary Apriliana on 12/04/22.
//

import UIKit

class SetupNameViewController: UIViewController {
    
    @IBOutlet weak var nameField: UITextField!
    let USER_NAME = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Connected")
        if let name = USER_NAME.string(forKey: "name") {
            print(name)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func SaveName(_ sender: UIButton) {
        if (nameField.text?.count)! > 0 {
            USER_NAME.set(nameField, forKey: "name")
        }
    }
}

