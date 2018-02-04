//
//  LoginController.swift
//  Asguard
//
//  Created by yewwee on 03/02/2018.
//  Copyright © 2018 yewwee. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController : UIViewController{
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        Auth.auth().signIn(withEmail: email.text!, password: password.text!) { (user, error) in
            if error != nil {
                print("Login Failed")
            } else{
                print("Login Successful")
                self.performSegue(withIdentifier: "goToDashboard", sender: self)
            }
        }
    }
    
}
