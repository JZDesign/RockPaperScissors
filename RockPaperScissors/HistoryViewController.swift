//
//  HistoryViewController.swift
//  RockPaperScissors
//
//  Created by JacobRakidzich on 5/19/17.
//  Copyright © 2017 Jacob Rakidzich. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // outlet for table
    @IBOutlet weak var tableView: UITableView!
    // array of results
    var history: [MatchResults]!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return history.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        // set reuse cell
        let CellID = "HistoryCell"
        let placeholderCell = tableView.dequeueReusableCell(withIdentifier: CellID, for: indexPath)
        //read data in from struct objects
        placeholderCell.textLabel?.text = history[indexPath.row].winLose
        placeholderCell.imageView?.image = history[indexPath.row].image
        // display cell info
        return placeholderCell
    }
    
    @IBAction func doGoBackButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

}
