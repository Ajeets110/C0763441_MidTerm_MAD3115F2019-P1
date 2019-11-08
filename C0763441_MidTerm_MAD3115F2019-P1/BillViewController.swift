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
            
            if c != nil
            {
                billTable.dataSource = self
                billTable.delegate = self
                custFName.text = custTemp?.fullName
                custEmail.text = custTemp?.customerEmail
                if let id = custTemp?.customerID {
                    custId.text = "\(id)"
                }
            }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sinObj.returnCount()
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let c = sinObj.returnCustObj(custId: Int(indexPath.row+1))
        let cell = tableView.dequeueReusableCell(withIdentifier: "BillCell", for: indexPath) as! BillTableViewCell
        //tempDic = c!.billDictionary
        //billType.text = tempDic[indexPath.row, b]
        let billTemp = c?.returnBillArray()
        let bTemp = billTemp?[indexPath.row].billType.rawValue
        
        if (bTemp?.elementsEqual("Mobile"))!
        {
            let tempObj =  billTemp![indexPath.row] as! MobileBill
            cell.billType.text = bTemp
            cell.BillDate.text = tempObj.billDate
            cell.billAmount.text = String(tempObj.billAmount)
        }
        if (bTemp?.elementsEqual("Interner"))!
        {
            let tempObj =  billTemp![indexPath.row] as! InternetBill
            cell.billType.text = bTemp
            cell.BillDate.text = tempObj.billDate
            cell.billAmount.text = String(tempObj.billAmount)
        }
        if (bTemp?.elementsEqual("Hydro"))!
        {
            let tempObj =  billTemp![indexPath.row] as! HydroBill
            cell.billType.text = bTemp
            cell.BillDate.text = tempObj.billDate
            cell.billAmount.text = String(tempObj.billAmount)
        }
        return cell
    }
    
}

