//
//  AcademicsViewController.swift
//  SpartanApp
//
//  Created by Nathan  Abegaz on 4/2/19.
//  Copyright © 2019 Nathan  Abegaz. All rights reserved.
//

import UIKit

class AcademicsViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    
    let clubCategories: [String] = ["Biology Club","Business Club", "Computer Science Club","Debate Club", "Math Club", "Robotics", "Tutoring Club"]
    let segues: [String] = ["bio"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return clubCategories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = UITableViewCell()
        myCell.textLabel?.text = clubCategories[indexPath.row]
        return myCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "bio", sender: nil)
    }
    
 
    @IBAction func transition(_ sender: Any) {
        self.performSegue(withIdentifier: "bio", sender: nil)
    }
    
}
