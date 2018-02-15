//
//  FirebaseClient.swift
//  Asguard
//
//  Created by Yew Wee Chua on 10/2/18.
//  Copyright © 2018 yewwee. All rights reserved.
//

import UIKit
import Firebase

class FirebaseClient: NSObject {

    func getDB(dbName: String) -> DatabaseReference {
        return  Database.database().reference().child(dbName)
    }
    
    func saveTrainingSession(dbRef: DatabaseReference, value: AnyObject) -> Bool {
        var returnValue = false
        dbRef.childByAutoId().setValue(value) {
                (error, reference) in
                if error != nil {
                    print(error!)
                    returnValue = false
                } else {
                    print("Training form saved successfully!")
                    returnValue = true
                }
        }
        return returnValue
    }
}
