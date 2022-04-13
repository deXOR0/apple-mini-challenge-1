//
//  DetailsTableViewController.swift
//  VirtualPet
//
//  Created by Jonathan Andryana on 14/04/22.
//

import UIKit
import SwiftUI

struct Details {
    var emoji : String
    var startTime : String
    var endTime : String
    var gamesPlayed : String
    var sessionDetails : String
}

class DetailsCell : UITableViewCell {
  
    @IBOutlet weak var emojiHolder: UILabel!
    @IBOutlet weak var gamesPlayedHolder: UILabel!
    @IBOutlet weak var timesPlayedHolder: UILabel!
    @IBOutlet weak var sessionDetailsHolder: UILabel!
}

var user : User = User()
let date = Calendar.current.startOfDay(for: Date())

class DetailsTableViewController : UITableViewController {
    
    let collection = user.journalCollection.journals[date]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.collection?.count ?? 0
       }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailsCell", for: indexPath) as! DetailsCell
        
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm"
        let detail = self.collection![indexPath.row]
        cell.emojiHolder?.text = detail.feelings <= 0.2 ? "😞" : detail.feelings <= 0.4 ? "🙁" : detail.feelings <= 0.6 ? "😐" : detail.feelings <= 0.8 ? "🙂"  : "😆"
        cell.timesPlayedHolder.text = formatter.string(from: detail.startDate) + " - " + formatter.string(from: detail.endDate)
        cell.gamesPlayedHolder?.text = "Games Played : " + detail.gamesPlayed
        cell.sessionDetailsHolder?.text = detail.gamingExperience

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            "\(Date())"
        }
    
    override func viewDidLoad() {
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = 250
//        tableView.backgroundView = UIImageView(image: UIImage(named: "skyBackground"))
    }

    
}
