//
//  EngineeringClubsViewController.swift
//  SpartanApp
//
//  Created by Nathan  Abegaz on 4/29/19.
//  Copyright © 2019 Nathan  Abegaz. All rights reserved.
//

import UIKit

class EngineeringClubsViewController:UIViewController, UITableViewDataSource,UITableViewDelegate {
    

    let segues: [String] = ["AerospaceSegue","CivilSegue","ComputerSegue", "RoboticsSegue"]

   let engineeringClubs: [String] = ["Aerospace Engineering Club","Civil Engineering Club","Computer and Software Engineering Club","Robotics"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return engineeringClubs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = UITableViewCell()
        myCell.textLabel?.text = engineeringClubs[indexPath.row]
        return myCell
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
