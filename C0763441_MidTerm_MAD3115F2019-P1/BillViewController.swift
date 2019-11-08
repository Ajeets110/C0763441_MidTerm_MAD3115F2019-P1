//
//  BillViewController.swift
//  C0763441_MidTerm_MAD3115F2019-P1
//
//  Created by MacStudent on 2019-11-07.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class BillViewController: UIViewController {

    var sinObj = Singleton.getInstance()
    
    
    @IBOutlet weak var cust_detail: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
         
    }
    
    var custId: Int
    var custName: String
    var custEmail: String
    
    init(id: Int, custName: String, email: String) {
        custId = id
        self.custName = custName
        self.custEmail = email
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

