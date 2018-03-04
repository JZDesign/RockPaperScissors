//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by JacobRakidzich on 5/7/17.
//  Copyright © 2017 Jacob Rakidzich. All rights reserved.
//

import UIKit

class PlayViewController: UIViewController, ResultViewControllerDelegate {
    // get button pressed value
    var buttonTag: Int?
    // history array to hold temporary results
    var history = [MatchResults]()
    
    func randomOpponentValue() -> Int {
        // Generate a number to assign rock, paper, or scissors to the opponent.
        let randomValue = 1 + arc4random() % 3
        // Return a more convenient Int, initialized with the random value
        return Int(randomValue)
    }

    // MARK: Actions
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Play" {
            // set the controller destination to the results view with attached player selections
            let controller = segue.destination as! ResultViewController
            // set delegate for pass back
            controller.delegate = self
            controller.firstValue = buttonTag
            controller.secondValue = randomOpponentValue()
            
        } else if segue.identifier == "History" {
            // show history 
            let controller = segue.destination as! HistoryViewController
            controller.history = self.history
        }
    }

    // player selected a button, perform segue with player choice attached.
    @IBAction func doSegue(_ sender: UIButton) {
        buttonTag = sender.tag
        performSegue(withIdentifier: "Play", sender: self)
    }
    
    @IBAction func doHistorySegue(_ sender: UIButton) {
        performSegue(withIdentifier: "History", sender: self)
    }

    // MARK: ResultViewControllerDelegate
    
    func readData(gameHistory: MatchResults) {
        history.append(gameHistory)
    }
 }

