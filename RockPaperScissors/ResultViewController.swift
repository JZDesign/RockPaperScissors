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

    var firstValue: Int?
    var secondValue: Int?
    
    override func viewWillAppear(_ animated: Bool) {
        calculateResult(a: firstValue!, b: secondValue!)
    }

    func calculateResult(a: Int, b: Int) {
        if a == b {
            resultLabel.text = "IT'S A TIE!"
            resultImage.image = UIImage(named: "itsATie")
        } else if a == 1 {
            if b == 2 {
                resultLabel.text = "YOU LOSE! Paper Covers Rock!"
                resultImage.image = UIImage(named: "PaperCoversRock")
            } else {
                resultLabel.text = "YOU WIN! Rock Crushes Scissors!"
                resultImage.image = UIImage(named: "RockCrushesScissors")
            }
        } else if a == 2 {
            if b == 1 {
                resultLabel.text = "YOU WIN! Paper Covers Rock"
                resultImage.image = UIImage(named: "PaperCoversRock")
            } else {
                resultLabel.text = "YOU LOSE! Scissors Cut Paper!"
                resultImage.image = UIImage(named: "ScissorsCutPaper")
            }
        } else if a == 3 {
            if b == 1 {
                resultLabel.text = "YOU LOSE! Rock Crushes Scissors"
                resultImage.image = UIImage(named: "RockCrushesScissors")
            } else {
                resultLabel.text = "YOU WIN! Scissors Cut Paper!"
                resultImage.image = UIImage(named: "ScissorsCutPaper")
            }
        }
    }
    
    @IBAction func doPlayAgainButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
