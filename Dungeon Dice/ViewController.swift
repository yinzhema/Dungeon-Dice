//
//  ViewController.swift
//  Dungeon Dice
//
//  Created by Yinzhe Ma on 9/16/19.
//  Copyright © 2019 Yinzhe Ma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceNumberLabel: UILabel!
    var number=0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func giveNumber(sideNumber:Int) {
        number=Int.random(in:1...sideNumber)
        diceNumberLabel.text=String(number)
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        giveNumber(sideNumber: sender.tag)
    }

}

