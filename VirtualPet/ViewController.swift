//
//  ViewController.swift
//  VirtualPet
//
//  Created by Atyanta Awesa Pambharu on 06/04/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var emoji: UILabel!
    
    @IBAction func emojiValue(_ sender: UISlider) {
        let currValue = Float(sender.value)
        
        emoji.text = currValue <= 0.2 ? "😞" : currValue <= 0.4 ? "🙁" : currValue <= 0.6 ? "😐" : currValue <= 0.8 ? "🙂"  : "😆"

    }
    
    @IBAction func continueButtonPressed(_ sender: Any) {
    }
}

