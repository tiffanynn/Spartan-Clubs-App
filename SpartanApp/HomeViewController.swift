//
//  HomeViewController.swift
//  SpartanApp
//
//  Created by Nathan  Abegaz on 4/2/19.
//  Copyright © 2019 Nathan  Abegaz. All rights reserved.
//

import UIKit
import FirebaseUI
import SafariServices

class HomeViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
 
        
    let clubCategories: [String] = ["Academics","Social","Sports"]
    let segues: [String] = ["academicsSegue","socialSegue","sportsSegue"]

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
    }

    
    
    
    
    ///Creating Club
    func showSafariVC(for url: String) {
        guard let url = URL(string: url) else {
            
            //Show an invalid URL error alert
            return
        }
        
        let safariVC = SFSafariViewController(url: url)
        present(safariVC, animated: true)
    }
    
    @IBAction func createClubButton(_ sender: Any) {
        showSafariVC(for: "http://www.sjsu.edu/getinvolved/recognized-student-orgs/new-student-org/index.html")
    }
    
    //Logout
    
    @IBAction func logoutButton(_ sender: Any) {
        
        do {
            try Auth.auth().signOut()
        }
        catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let initial = storyboard.instantiateInitialViewController()
        UIApplication.shared.keyWindow?.rootViewController = initial
    }
    
}

