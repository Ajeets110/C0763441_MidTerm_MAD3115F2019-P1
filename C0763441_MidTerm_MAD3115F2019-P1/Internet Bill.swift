//
//  Internet Bill.swift
//  C0763441_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class InternetBill: Bill {
    
    //  Variable declaration
    var providerName : String
    var gbUsed : Float
    var billAmount : Float
    
    //  Initializer
    init(providerName : String, gbUsed : Float, billAmount : Float, billId : Int , billDate : String, billType : Bill.bTypes){
        
        
        self.providerName = providerName
        self.gbUsed = gbUsed
        self.billAmount = billAmount
        super.init(billId: billId, billDate: billDate, billType: billType)
        
    }
    
    //  Function Overriding
    
    override func display() {
        print("*****************************")
        print("       Bill Details      ")
        print("***************************************")
        print("Bill Id : \(billId)")
        print("Bill Type : \(billType)")
        print("Bill Date : \(billDate)")
        print("Provider Name : \(providerName)")
        print("Data Used : \(gbUsed) GB")
        print("Bill Amount : $ \(billAmount)")
        
    }
    
    
    
}
