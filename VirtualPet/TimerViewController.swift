//
//  TimerViewController.swift
//  VirtualPet
//
//  Created by Atyanta Awesa Pambharu on 13/04/22.
//

import UIKit

class TimerViewController: UIViewController {

    @IBOutlet weak var bottomOverlayView: UIView!
    @IBOutlet weak var targetTimeLabel: UILabel!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var timeView: UIView!
    @IBOutlet weak var petImage: UIImageView!
    @IBOutlet weak var titleOverlayView: UIView!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    var timer: Timer = Timer()
    var elapsedTime: Int = 0
    var startDate: Date = Date()
    var endDate: Date = Date()
    var timeExceededLimit: Bool = false
    
    var user: User = User()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        backgroundImage.image = UIImage(named: self.user.inventory.backgroundUsed)
        titleOverlayView.layer.opacity = 0.3
        timeView.layer.cornerRadius = 8
        bottomOverlayView.layer.opacity = 0.5
    
        timerLabel.text = buildTimeString(sec: elapsedTime)
        targetTimeLabel.text = buildTimeString(sec: self.user.gamingQuotaLeft)
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerTick), userInfo: nil, repeats: true)
        
    }
    
    @objc func timerTick() {
        self.elapsedTime += 1
        let timeString = buildTimeString(sec: elapsedTime)
        timerLabel.text = timeString
        if !timeExceededLimit && self.elapsedTime > self.user.gamingQuotaLeft {
            changeTimerLabelColorDanger()
        }
    }
    
    func changeTimerLabelColorDanger() {
        timerLabel.textColor = UIColor.red
        self.timeExceededLimit = true
    }
    
    func secToHMS(sec: Int) -> (Int, Int, Int) {
        return ((sec / 3600), ((sec % 3600) / 60), ((sec % 3600) % 60))
    }
    
    func buildTimeString(sec: Int) -> String {
        let time = secToHMS(sec: sec)
        let h = time.0
        let m = time.1
        let s = time.2
        var timeString = ""
        timeString += String(format: "%02d", h)
                timeString += ":"
                timeString += String(format: "%02d", m)
                timeString += ":"
                timeString += String(format: "%02d", s)
                return timeString
    }
    
    @IBAction func stopButtonPressed(_ sender: UIButton) {
        timer.invalidate()
        self.user.gamingQuotaLeft = max(self.user.gamingQuotaLeft - elapsedTime, 0)
//        performSegue(withIdentifier: "<segueName>", sender: self)
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "<segueName>" {
//            let destinationViewController = segue.destination as? <ViewControllerName>
//            destinationViewController?.user = self.user
//        }
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
