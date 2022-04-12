//
//  ProfileViewController.swift
//  VirtualPet
//
//  Created by Atyanta Awesa Pambharu on 12/04/22.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var calendarBackgroundView: UIView!
    @IBOutlet weak var calendarView: UIDatePicker!
    @IBOutlet weak var barChartView: UIView!
    @IBOutlet weak var levelLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        calendarBackgroundView.layer.cornerRadius = 10;
        calendarBackgroundView.layer.masksToBounds = true;
        
        barChartView.layer.cornerRadius = 10;
        barChartView.layer.masksToBounds = true;
        
        let barChart = BarChart(barChartView: barChartView)
        
        /// Dummy Data
        /// Change with data from user
        
        let userName = "Pocky"
        let userLevel = 9
        
        let targetTime = 6 * 3600
        let activity: [TimePlayed] = [
            TimePlayed(date: getDate(dateStr: "2022-04-06"), playTimeInSeconds: 3 * 3600),
            TimePlayed(date: getDate(dateStr: "2022-04-07"), playTimeInSeconds: 4 * 3600),
            TimePlayed(date: getDate(dateStr: "2022-04-08"), playTimeInSeconds: 5 * 3600),
            TimePlayed(date: getDate(dateStr: "2022-04-09"), playTimeInSeconds: 8 * 3600),
            TimePlayed(date: getDate(dateStr: "2022-04-10"), playTimeInSeconds: 6 * 3600),
            TimePlayed(date: getDate(dateStr: "2022-04-11"), playTimeInSeconds: 7 * 3600),
            TimePlayed(date: getDate(dateStr: "2022-04-12"), playTimeInSeconds: 12 * 3600)
        ]
        
        barChart.setupBarChart(targetTimeInSeconds: targetTime, lastWeekActivity: activity)
        usernameLabel.text = userName
        levelLabel.text = "LV. \(userLevel)"

    }
    
    func getDate(dateStr: String) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        dateFormatter.timeZone = TimeZone.current
        dateFormatter.locale = Locale.current
        return dateFormatter.date(from: dateStr) ?? Date() // "2015-04-01T11:42:00"
    }
    
    @IBAction func calendarValueChanged(_ sender: UIDatePicker) {
        print(sender.date)
        /// if sender.date exists in user journalCollection, performSegue with data: sender.date
        /// else do nothing
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
