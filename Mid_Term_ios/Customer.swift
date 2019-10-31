//
//  Customer.swift
//  Mid_Term_ios
//
//  Created by Rizul goyal on 2019-10-30.
//  Copyright © 2019 Rizul goyal. All rights reserved.
//

import Foundation
class Customer
{
    var customerID : Int?
    var customerFName: String?
    var customerLName : String?
    var fullName : String{
        return customerFName! + " " + customerLName!
    }
      var customerEmail: String?
    //var billDictionary = [Int:Bill]()
    var totalBillAmount : Float?
    
    init(customerID:Int,customerFName: String,customerLName:String,customerEmail:String) {
        self.customerID=customerID
        self.customerFName=customerFName
        self.customerLName=customerLName
        self.customerEmail=customerEmail
    }
}
