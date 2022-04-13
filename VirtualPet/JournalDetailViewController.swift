//
//  JournalDetailViewController.swift
//  VirtualPet
//
//  Created by Jonathan Andryana on 14/04/22.
//

import UIKit


class JournalDetailViewController: UIViewController {
    
    @IBOutlet weak var messageHolder: UILabel!
    @IBOutlet weak var dateHolder: UILabel!
    @IBOutlet weak var detailsTable: UITableView!
    @IBOutlet weak var headerTemplatet: UIView!
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let hoursPlayed = 2
        let sessionsPlayed = 2
        
        dateHolder.text = "8 April 2022"
        messageHolder.text = "You spent \(hoursPlayed) hour(s) of gaming over \(sessionsPlayed) game session(s)."
        
        
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
