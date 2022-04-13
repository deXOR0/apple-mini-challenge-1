//
//  ViewController.swift
//  VirtualPet
//
//  Created by Atyanta Awesa Pambharu on 06/04/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var affectionMeter: UIProgressView!
    @IBOutlet weak var hungerMeter: UIProgressView!
    @IBOutlet weak var money: UITextView!
    
     
    @IBOutlet weak var user: UIImageView!
    @IBAction func timerSetter(_ sender: Any, forEvent event: UIEvent) {
    }
    @IBAction func inventory(_ sender: UIButton){
        
    }
    @IBAction func shop(_ sender: UIButton) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

