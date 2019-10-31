//
//  Bill.swift
//  C0763441_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Bill: IDisplay {
    
    func display() {
            
    }
    //  Variable Declaration
    var billId : Int
    var billDate : String
    //var amount : Float
    enum bTypes {
        case Internet
        case Mobile
        case Hydro
    }
    var billType : bTypes
    
    init(billId : Int , billDate : String, billType : bTypes) {
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
    }

    
    
}
