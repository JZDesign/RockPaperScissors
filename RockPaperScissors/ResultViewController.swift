//
//  ResultViewController.swift
//  RockPaperScissors
//
//  Created by JacobRakidzich on 5/7/17.
//  Copyright © 2017 Jacob Rakidzich. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultImage: UIImageView!

    // player choices represented as integers
    var firstValue: Int?
    var secondValue: Int?
    
    override func viewWillAppear(_ animated: Bool) {
        calculateResult()
    }

    // compare player choices and assign appropriate responses
    // 1 = rock 
    // 2 = paper
    // 3 = scissors
    func calculateResult() {
        if firstValue == secondValue {
            resultLabel.text = "IT'S A TIE!"
            resultImage.image = UIImage(named: "itsATie")
        } else if firstValue == 1 {
            if secondValue == 2 {
                resultLabel.text = "YOU LOSE! Paper Covers Rock!"
                resultImage.image = UIImage(named: "PaperCoversRock")
            } else {
                resultLabel.text = "YOU WIN! Rock Crushes Scissors!"
                resultImage.image = UIImage(named: "RockCrushesScissors")
            }
        } else if firstValue == 2 {
            if secondValue == 1 {
                resultLabel.text = "YOU WIN! Paper Covers Rock"
                resultImage.image = UIImage(named: "PaperCoversRock")
            } else {
                resultLabel.text = "YOU LOSE! Scissors Cut Paper!"
                resultImage.image = UIImage(named: "ScissorsCutPaper")
            }
        } else if firstValue == 3 {
            if secondValue == 1 {
                resultLabel.text = "YOU LOSE! Rock Crushes Scissors"
                resultImage.image = UIImage(named: "RockCrushesScissors")
            } else {
                resultLabel.text = "YOU WIN! Scissors Cut Paper!"
                resultImage.image = UIImage(named: "ScissorsCutPaper")
            }
        }
    }
    
    // return to PlayViewController
    @IBAction func doPlayAgainButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
