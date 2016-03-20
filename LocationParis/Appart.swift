//
//  Appart.swift
//  LocationParis
//
//  Created by Bin CHEN on 3/9/16.
//  Copyright © 2016 Fantestech. All rights reserved.
//

import UIKit

class Appart: NSObject {
    var objectId : String?
    var price : Double = 0
    var chamber: Int = 0
    var room: Int = 0
    var type: Int = 0
    var address: String?
    var city : String?
    var zipCode: String?
    var photos: String?
    var phone : String?
    var contact : String?
    var furniture : String?
    var startDate: NSDate?
    var floor : Int = 0
    var comment : String?
    
    func saveNewAppart() {
        let appart = Appart()
        appart.price = 300.0
        appart.chamber = 1
        appart.room = 2
        appart.type = 0
        appart.address = "avenue yo"
        appart.city = "Creteil"
        appart.zipCode = "94000"
        appart.phone = "777-387"
        appart.contact = "Mr Ren"
        appart.furniture = "NA"
        appart.startDate = NSDate()
        appart.comment = "yayay "
        
        
        let backendless = Backendless.sharedInstance()
        let dataStore = backendless.data.of(Appart.ofClass())
        
        dataStore.save(appart,
            response: { (result: AnyObject!) -> Void in
            let obj = result as! Appart
            print("Appart has been saved: \(obj.objectId)")
            }) { (fault: Fault!) -> Void in
                print("fServer reported an error: \(fault)")
        }
    }
//
//let contact = Contact()
//contact.name = "Jack Daniels"
//contact.age = 147
//contact.phone = "777-777-777"
//contact.title = "Favorites"
// 
//let dataStore = backendless.data.of(Contact.ofClass())
// 
//// save object synchronously
//var error: Fault?
//let result = dataStore.save(contact, fault: &error) as? Contact
//if error == nil {
//    print("Contact has been saved: \(result!.objectId)")
//}
//else {
//    print("Server reported an error: \(error)")
//}
// 
//// save object asynchronously
//dataStore.save(
//    contact,
//    response: { (result: AnyObject!) -> Void in
//            let obj = result as! Contact
//            print("Contact has been saved: \(obj.objectId)")
//        },
//    error: { (fault: Fault!) -> Void in
//            print("fServer reported an error: \(fault)")
//})
//  }
}
