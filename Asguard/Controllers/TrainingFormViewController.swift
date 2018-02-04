//
//  TrainingFormViewController.swift
//  Asguard
//
//  Created by yewwee on 03/02/2018.
//  Copyright © 2018 yewwee. All rights reserved.
//

import UIKit
import Eureka

class TrainingFormViewController : FormViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        form +++ Section("Run")
            <<< DateRow(){
                $0.title = "Date"
                $0.value = Date(timeIntervalSinceReferenceDate: 0)
            }
            <<< TextRow(){ row in
                row.title = "D"
                row.placeholder = "Enter text here"
            }
            <<< PhoneRow(){
                $0.title = "Phone Row"
                $0.placeholder = "And numbers here"
            }
        navigationOptions = RowNavigationOptions.Enabled.union(.StopDisabledRow)
        animateScroll = true
        rowKeyboardSpacing = 20
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
