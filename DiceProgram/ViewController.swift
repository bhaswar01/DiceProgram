//
//  ViewController.swift
//  DiceProgram
//
//  Created by Yogesh Patel on 25/08/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelSumCount: UILabel!
    @IBOutlet weak var diceTwoImageView: UIImageView!
    @IBOutlet weak var diceOneImageView: UIImageView!
    
  //  var diceImageNameArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func diceConfiguration() {
        let value1 = Int.random(in: 1...6)//6
        let value2 = Int.random(in: 1...6)//6
        
        labelSumCount.text = "The sume is \(value1 + value2)"
        
        diceOneImageView.image = UIImage(named: "dice\(value1)")
        diceTwoImageView.image = UIImage(named: "dice\(value2)")
    }
    
    @IBAction func rollButtonTapped(_ sender: UIButton) {
        diceConfiguration()
    }
    
}

