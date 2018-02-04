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
        //TODO: RUN SECTION, DATE, DISTANCE, PACE, DIFFICULTY, COMMENTS
        let todayDate = Date()
        form +++ Section("Run")
            <<< DateRow(){
                $0.title = "Date"
                $0.value = todayDate
            }
            <<< DecimalRow(){ row in
                row.title = "Distance (KM)"
                row.placeholder = "Distance of run"
            }
            <<< DecimalRow(){ row in
                row.title = "Average Run Pace (min/km)"
                row.placeholder = "5"
            }
            <<< ActionSheetRow<String>() {
                $0.title = "Type of Run"
                $0.selectorTitle = "Pick the type of run"
                $0.options = ["Easy Run","Tempo Run","Intervals","Long Run"]
                $0.value = "Easy Run"
            }
            <<< TextAreaRow() { row in
                row.title = "Comments"
                row.placeholder = "Comments"
            }
            <<< ButtonRow() { row in
                row.title = "Submit"
                }.onCellSelection({ (cell, row) in
                    print("Form Submitted!")
                })
        navigationOptions = RowNavigationOptions.Enabled.union(.StopDisabledRow)
        animateScroll = true
        rowKeyboardSpacing = 20
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
