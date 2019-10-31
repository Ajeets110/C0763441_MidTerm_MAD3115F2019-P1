//
//  Mobile Bill.swift
//  C0763441_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class MobileBill: Bill{
    
    //  Variable declaration
    var manufacturerName : String
    var planName : String
    var phoneNumber : Int
    var minutesUsed : Int
    var internetUsed : Float
    var billAmount : Float
    
    //  Initializer
    init(manufacturerName:String, planName:String, phoneNumber:Int, internetUsed:Float, minutesUsed:Int, billAmount:Float, billId : Int, billType : bTypes, billDate: String) {
        self.manufacturerName = manufacturerName
        self.planName = planName
        self.phoneNumber = phoneNumber
        self.internetUsed = internetUsed
        self.minutesUsed = minutesUsed
        self.billAmount = billAmount
        super.init(billId: billId, billDate: billDate, billType: billType)
    }
    
    //  Override
    override func display() {
        print("*****************************")
        print("       Bill Details      ")
        print("*****************************")
        print("Bill ID : \(billId)")
        print("BillDate : \(billDate)")
        print("Bill Type : \(billType)")
        print("Manufacturer Name : \(manufacturerName)")
        print("Plan Name : \(planName)")
        print("Minutes Used : \(minutesUsed)")
        print("Internet Used : \(internetUsed)")
        print("Bill Amount : $\(billAmount)")
        
    }
    
    
    
}
