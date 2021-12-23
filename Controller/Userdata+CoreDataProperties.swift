//
//  Userdata+CoreDataProperties.swift
//  LoginTask
//
//  Created by Macintosh on 15/12/21.
//
//

import Foundation
import CoreData


extension Userdata {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Userdata> {
        return NSFetchRequest<Userdata>(entityName: "Userdata")
    }

    @NSManaged public var firstname: String?
    @NSManaged public var lastname: String?
    @NSManaged public var emailid: String?
    @NSManaged public var password: String?

}

extension Userdata : Identifiable {

}
