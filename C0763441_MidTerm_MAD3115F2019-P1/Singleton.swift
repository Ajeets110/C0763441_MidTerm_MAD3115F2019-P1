//
//  Singleton.swift
//  C0763441_MidTerm_MAD3115F2019-P1
//
//  Created by MacStudent on 2019-10-31.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Singleton {
    
    
    
var c1 = Customer(customerID: 1, firstName: "Ajeet", lastName: "Singh", email: "ajeets1@gmail.com")
var c2 = Customer(customerID : 2, firstName : "Pritesh", lastName : "Patel", email : "priteshpatel7@gmail.com")
var c3 = Customer(customerID : 3, firstName : "Rakesh", lastName : "Kumar", email : "rakeshKumar7@gmail.com")

    
    
var custDictionary = Dictionary<Int,Customer>()

func addCustomer(c:Customer){

    custDictionary.updateValue(c, forKey: c.customerId)

}

//Adding object in Dictionary of Customer


}

