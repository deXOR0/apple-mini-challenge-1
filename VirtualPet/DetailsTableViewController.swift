//
//  DetailsTableViewController.swift
//  VirtualPet
//
//  Created by Jonathan Andryana on 14/04/22.
//

import UIKit

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

class DetailsTableViewController : UITableViewController {
    let details = [
        Details(emoji: "😐", startTime: "12:00 - 12:00", endTime: "12:00 - 12:00", gamesPlayed: "Games Played : Valorant", sessionDetails: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus consectetur vel sapien a elementum. Nunc tellus neque, rutrum ut tristique vel, con"),
        Details(emoji: "😐", startTime: "12:00 - 12:00", endTime: "12:00 - 12:00", gamesPlayed: "Games Played : Valorant", sessionDetails: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus consectetur vel sapien a elementum. Nunc tellus neque, rutrum ut tristique vel, con"),
        Details(emoji: "😐", startTime: "12:00 - 12:00", endTime: "12:00 - 12:00", gamesPlayed: "Games Played : Valorant", sessionDetails: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus consectetur vel sapien a elementum. Nunc tellus neque, rutrum ut tristique vel, con"),
        Details(emoji: "😐", startTime: "12:00 - 12:00", endTime: "12:00 - 12:00", gamesPlayed: "Games Played : Valorant", sessionDetails: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus consectetur vel sapien a elementum. Nunc tellus neque, rutrum ut tristique vel, con")
    ]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           self.details.count
       }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailsCell", for: indexPath) as! DetailsCell

        let detail = self.details[indexPath.row]
        cell.emojiHolder?.text = detail.emoji
        cell.timesPlayedHolder.text = detail.startTime
        cell.gamesPlayedHolder?.text = detail.gamesPlayed
        cell.sessionDetailsHolder?.text = detail.sessionDetails

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            "8 April 2022"
        }
    
    override func viewDidLoad() {
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = 250
    }

    
}
