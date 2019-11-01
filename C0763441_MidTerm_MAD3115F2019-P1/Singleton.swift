//
//  Singleton.swift
//  C0763441_MidTerm_MAD3115F2019-P1
//
//  Created by MacStudent on 2019-10-31.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class Singleton: NSObject {
    
    //created dictionary for customer
    private var custDict:[Int:Customer]
    
    //private init
    private override init() {
        
    }
    
    //created object of singleton
    private static var sobj = Singleton()
    
    //return singleton obj usin function
    internal static func getInstance() -> Singleton {
        
        return sobj
        
    }
    
    //function to add customer in dictionary
    func addCustomerToDictionary(c: Customer) {
        custDict.updateValue(c, forKey: c.customerId)
    }
    
    //funtion to create customer objects and add using above function
    func alreadyCustomer() {
        let c1 = Customer(customerID: 1, firstName: "Ajeet", lastName: "Singh", email: "ajeets110@gmail.com")
        let c2 = Customer(customerID: 2, firstName: "Rakesh", lastName: "Kumar", email: "rakesh098@gmail.com")
        let c3 = Customer(customerID: 3, firstName: "Jay-", lastName: "Z", email: "jayz666@gmail.com")
        addCustomerToDictionary(c: c1)
        addCustomerToDictionary(c: c2)
        addCustomerToDictionary(c: c3)
        
    }
    
    //funtion to add customer
    func addCustomer(customerID:Int, firstname:String, lastname:String, email:String)  {
        
        var c = Customer(customerID: customerID, firstName: firstname, lastName: lastname, email: email)
        addCustomerToDictionary(c: c)
        print(c.firstName)
        
    }
    
    func returnCount() -> Int {
        return custDict.count
    }
    
    
    func returnCustObj(custId:Int)->Customer?
    {
        for(key,value) in custDict
        {
            if key==custId
            {
                return value
            }
        }
        return nil
    }
    
}
