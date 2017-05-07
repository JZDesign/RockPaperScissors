//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by JacobRakidzich on 5/7/17.
//  Copyright © 2017 Jacob Rakidzich. All rights reserved.
//

import UIKit

class PlayViewController: UIViewController {

    var buttonTag: Int?
    
    func randomOpponentValue() -> Int {
        // Generate a number to assign rock, paper, or scissors to the opponent.
        let randomValue = 1 + arc4random() % 3
        // Return a more convenient Int, initialized with the random value
        return Int(randomValue)
    }

    // MARK: Actions
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Play"{
            let controller = segue.destination as! ResultViewController
            controller.firstValue = buttonTag
            controller.secondValue = randomOpponentValue()
        }
    }

    
    @IBAction func doSegue(_ sender: UIButton) {
        buttonTag = sender.tag
        performSegue(withIdentifier: "Play", sender: self)
    }
 
   
}

