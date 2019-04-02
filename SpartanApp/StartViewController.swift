//
//  StartViewController.swift
//  SpartanApp
//
//  Created by Nathan  Abegaz on 3/29/19.
//  Copyright © 2019 Nathan  Abegaz. All rights reserved.
//

import UIKit
import FirebaseUI
class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if Auth.auth().currentUser != nil {
            self.performSegue(withIdentifier: "homePageSegue", sender: nil)
        }
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func loginButton(_ sender: Any) {
        performSegue(withIdentifier: "LoginViewController1", sender: self)
    }
    
    @IBAction func signUpButton(_ sender: Any) {
        self.performSegue(withIdentifier: "signUp1", sender: self)
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
