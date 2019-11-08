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
     var custDict = [Int:Customer]()
    
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
        // Customer 1
        let i1 = InternetBill(providerName : "Rogers", gbUsed : 500, billAmount : 56.50, billId : 1 , billDate : "Wednesday, 19 June, 2019", billType : Bill.bTypes.Internet)
        let m1 = MobileBill(manufacturerName:"Galaxy", planName:"Prepaid Talk", phoneNumber:6464647484, internetUsed:5, minutesUsed:356, billAmount:250.0, billId : 2, billType : Bill.bTypes.Mobile, billDate: "Wednesday, 19 June, 2019")
        let h1 = HydroBill(billID : 3 , billDate : "Wednesday, 19 June, 2019", billType : Bill.bTypes.Hydro, agencyName : "Planet Energy", unitConsumed : 29 , billAmount : 54.35)
        let c1 = Customer(customerID: 1, firstName: "Ajeet", lastName: "Singh", email: "ajeets110@gmail.com", billDictionary: [i1.billId : i1, m1.billId : m1, h1.billId : h1])
        
        // Customer 2
        let i2 = InternetBill(providerName : "Fido", gbUsed : 600, billAmount : 70.00, billId : 4 , billDate : "Wednesday, 29 June, 2019", billType : Bill.bTypes.Internet)
        let m2 = MobileBill(manufacturerName:"Apple", planName:"Prepaid Talk + Messages", phoneNumber:6476954211, internetUsed:6, minutesUsed:124, billAmount:80.00, billId : 5, billType : Bill.bTypes.Mobile, billDate: "Friday, 19 June, 2019")
        let c2 = Customer(customerID: 2, firstName: "Rakesh", lastName: "Kumar", email: "rakesh098@gmail.com", billDictionary: [i2.billId : i2, m2.billId : m2])
        let c3 = Customer(customerID: 3, firstName: "Jay-", lastName: "Z", email: "jayz666@gmail.com")
        
        
        addCustomerToDictionary(c: c1)
        addCustomerToDictionary(c: c2)
        addCustomerToDictionary(c: c3)
        
    }
    
    //funtion to add customer
    func addCustomer(firstname:String, lastname:String, email:String)
    {
        let cId = custDict.count+1
        var c = Customer(customerID: cId, firstName: firstname, lastName: lastname, email: email)
        addCustomerToDictionary(c: c)
        print(c.firstName)
        
    }
    
    func returnCount() -> Int {
        return custDict.count
    }
    
    //Return Customer Object 
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
