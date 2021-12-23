//
//  DataBaseHelper.swift
//  LoginTask
//
//  Created by Macintosh on 15/12/21.
//

import Foundation
import CoreData
import UIKit

class DataBaseHelper {
    
    static var shareinstance = DataBaseHelper()
    let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
    
    func save(object: [String : String]) {
        let userData = NSEntityDescription.insertNewObject(forEntityName: "Userdata", into: context!) as! Userdata
    
        userData.firstname = object["FirstName"]
        userData.lastname = object["LastName"]
        userData.emailid = object["EmailId"]
        userData.password = object["Password"]
        
        do {
            try context?.save()
        } catch  {
            print("data is not save")
        }
    }
}
