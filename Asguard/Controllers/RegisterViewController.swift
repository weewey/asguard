//
//  RegisterViewController.swift
//  Asguard
//
//  Created by yewwee on 02/02/2018.
//  Copyright © 2018 yewwee. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController : UIViewController{
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func registerPressed(_ sender: UIButton) {
        Auth.auth().createUser(withEmail: email.text!, password: password.text!) { (user, error) in
            if error != nil {
                print(error!)
            } else {
                print("user created successfully")
                self.performSegue(withIdentifier: "goToDashboard", sender: self)
            }
            
        }
    }
    
}
