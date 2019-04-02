//
//  SportsViewController.swift
//  SpartanApp
//
//  Created by Nathan  Abegaz on 4/2/19.
//  Copyright © 2019 Nathan  Abegaz. All rights reserved.
//

import UIKit

class SportsViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    let sports: [String] = ["Soocer","BasketBall","Flag Football","Badminton", "Tennis", "Golf"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return sports.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = UITableViewCell()
        myCell.textLabel?.text = sports[indexPath.row]
        return myCell
    }
    
}
