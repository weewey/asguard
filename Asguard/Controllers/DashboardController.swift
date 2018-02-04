//
//  DashboardController.swift
//  Asguard
//
//  Created by yewwee on 04/02/2018.
//  Copyright © 2018 yewwee. All rights reserved.
//

import UIKit
import Firebase

class DashboardController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func logOutPressed(_ sender: Any) {
        do {
            try Auth.auth().signOut()
            navigationController?.popToRootViewController(animated: true)
        } catch {
            print("Error signing out")
        }
    }
    
}

