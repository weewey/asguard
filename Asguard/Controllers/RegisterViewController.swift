//
//  RegisterViewController.swift
//  Asguard
//
//  Created by yewwee on 02/02/2018.
//  Copyright © 2018 yewwee. All rights reserved.
//

import UIKit

class RegisterViewController : UIViewController{
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBOutlet weak var registerButtonPressed: UIButton!
    
}
