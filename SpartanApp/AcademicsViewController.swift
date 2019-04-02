//
//  AcademicsViewController.swift
//  SpartanApp
//
//  Created by Nathan  Abegaz on 4/2/19.
//  Copyright © 2019 Nathan  Abegaz. All rights reserved.
//

import UIKit

class AcademicsViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
   
    let academics: [String] = ["Art","Buisness","Engineering","Biological Sciences"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return academics.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = UITableViewCell()
        myCell.textLabel?.text = academics[indexPath.row]
        return myCell
    }

}
