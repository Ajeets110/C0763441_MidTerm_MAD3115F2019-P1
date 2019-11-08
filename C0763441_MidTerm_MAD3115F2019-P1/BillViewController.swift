//
//  BillViewController.swift
//  C0763441_MidTerm_MAD3115F2019-P1
//
//  Created by MacStudent on 2019-11-07.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class BillViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var tempDic:Dictionary<Int,Bill> = [:]
  
    @IBOutlet weak var billTypeTxt: UITextField!
    @IBOutlet weak var billType: UILabel!
    var sinObj = Singleton.getInstance()
    @IBOutlet weak var cust_detail: UILabel!
    @IBOutlet weak var cust_detail_name: UILabel!
    
    @IBOutlet weak var cust_detail_email: UILabel!
    var c : Customer?=nil
    
        override func viewDidLoad() {
        super.viewDidLoad()
            
            cust_detail.text = c?.customerId.intToString()
            cust_detail_name.text = c?.fullName
            cust_detail_email.text = c?.email
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
        //tempDic = c!.billDictionary
        //billType.text = tempDic[indexPath.row, b]
        var billTemp = c?.returnBillArray()
        let bTemp = billTemp?[indexPath.row].billType
        //cell.
        return cell
    }
    
}

