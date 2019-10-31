//
//  Customer.swift
//  C0763441_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Customer : IDisplay{
    
    
    //  Variable declaration
    var customerId : Int
    var firstName : String
    var lastName : String
    var fullName : String {
        return firstName + " " + lastName
    }
    var email : String
    var billDictionary = Dictionary<Int, Bill>()
    
    init(customerID : Int, firstName : String, lastName : String, email : String, billDictionary : Dictionary<Int, Bill>){
        self.customerId = customerID
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.billDictionary = billDictionary
    }
    
    init(customerID : Int, firstName : String, lastName : String, email : String){
        self.customerId = customerID
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
    }
    //  override
    func display() {
        print("*****************************")
        print("Customer Id : \(customerId)")
        print("Full Name : \(fullName)")
        if billDictionary != nil{
        for i in billDictionary.values
        {
            i.display()
        }
        }
        else {
            print("user has no bill")
        }
    
    }
}

