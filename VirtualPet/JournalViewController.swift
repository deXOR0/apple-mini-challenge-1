//
//  JournalViewController.swift
//  VirtualPet
//
//  Created by Jonathan Andryana on 12/04/22.
//

import UIKit

class JournalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBOutlet weak var emojiHolder: UILabel!
    
    @IBAction func emojiSlider(_ sender: UISlider) {
        let currValue = Float(sender.value)
        
        emojiHolder.text = currValue <= 0.2 ? "😞" : currValue <= 0.4 ? "🙁" : currValue <= 0.6 ? "😐" : currValue <= 0.8 ? "🙂"  : "😆"

    }
    
    @IBAction func continueButtonPressed(_ sender: UIButton) {
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
