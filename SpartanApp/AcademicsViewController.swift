//
//  AcademicsViewController.swift
//  SpartanApp
//
//  Created by Nathan  Abegaz on 4/2/19.
//  Copyright © 2019 Nathan  Abegaz. All rights reserved.
//

import UIKit

class AcademicsViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    
    let clubCategories: [String] = ["Biology Club","Buisness Club","Computer Engineering Club", "Robotics", "Math Club", "Coding Club", "Tutoring Club"]
    let segues: [String] = ["engineering"]
    
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
        self.performSegue(withIdentifier: segues[indexPath.row], sender: nil)
        print(segues[indexPath.row])
    }
    
    
    @IBAction func transition(_ sender: Any) {
        self.performSegue(withIdentifier: "engineering", sender: nil)
    }
    
}
