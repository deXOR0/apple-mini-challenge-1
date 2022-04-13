//
//  ResultsViewController.swift
//  VirtualPet
//
//  Created by Jonathan Andryana on 13/04/22.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var oodinHolder: UIImageView!
    @IBOutlet weak var levelBar: UIProgressView!
    @IBOutlet weak var resultMessage: UILabel!
    @IBOutlet weak var levelHolder: UILabel!
    @IBOutlet weak var expGained: UILabel!
    @IBOutlet weak var expRange: UILabel!
    
    @IBOutlet weak var bottomOverlayView: UIView!
    
    var user : User = User()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bottomOverlayView.layer.opacity = 0.5
        
        
        var xpAdd = 10
        let currentPlay = 0
        
        var message = "Good job, keep it up!"
        oodinHolder.image = UIImage(named: "Pet_Success")
        if  currentPlay > user.gamingTargetTime {
            message = "Let’s do better next time."
            xpAdd = 5
            oodinHolder.image = UIImage(named: "Pet_Failed")
        }
        
        user.userExperience += xpAdd
        
        levelHolder.text = "Level " + String(user.userLevel)
        expRange.text = "Xp \(user.userExperience)/100"
        expGained.text = "+ \(xpAdd) xp"
        
        resultMessage.text = message
        
        UIView.animate(withDuration: 1){
            self.levelBar.setProgress(Float(self.user.userExperience)/100, animated: true)
        }
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
