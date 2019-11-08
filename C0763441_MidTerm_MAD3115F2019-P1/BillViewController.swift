//
//  BillViewController.swift
//  C0763441_MidTerm_MAD3115F2019-P1
//
//  Created by MacStudent on 2019-11-07.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class BillViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

  
    
    @IBOutlet weak var cust_detail: UILabel!
    @IBOutlet weak var cust_detail_name: UILabel!
    
    var c : Customer?=nil
    
        override func viewDidLoad() {
        super.viewDidLoad()
            
            //cust_detail.text = c?.customerId
            cust_detail_name.text = c?.fullName
            
            
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sinObj.returnCount()
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let c = sinObj.returnCustObj(custId: Int(indexPath.row+1))
        let cell = tableView.dequeueReusableCell(withIdentifier: "BillCell", for: indexPath)
        cell.textLabel?.text = c?.fullName
        return cell
    }
    
}

