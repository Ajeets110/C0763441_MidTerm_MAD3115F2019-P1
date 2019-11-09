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
    
    @IBOutlet weak var billTable: UITableView!
    @IBOutlet weak var cust_detail_email: UILabel!
    var c : Customer?=nil
    
        override func viewDidLoad() {
            
           if c != nil
            {

            cust_detail.text = c?.customerId.intToString()
            cust_detail_name.text = c?.fullName
            cust_detail_email.text = c?.email
            
            billTable.dataSource = self
            billTable.delegate = self
            }
        }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (c?.billDictionary.count)!
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "BillCell", for: indexPath) as! BillTableViewCell
        //tempDic = c!.billDictionary
        //billType.text = tempDic[indexPath.row, b]
        
        let billTemp = c!.returnBillArray()
        
        let bTemp = billTemp[indexPath.row].billType.rawValue
        
        if bTemp.elementsEqual("Mobile")
        {
            let tObj =  billTemp[indexPath.row] as! MobileBill
            cell.billId.text = tObj.billId.intToString()
            cell.billType.text = bTemp
            cell.BillDate.text = tObj.billDate
            
            //cell.billAmount.text = String(tObj.billAmount)
        }
        if bTemp.elementsEqual("Internet")
        {
            let tObj =  billTemp[indexPath.row] as! InternetBill
            cell.billId.text = tObj.billId.intToString()
            cell.billType.text = bTemp
            cell.BillDate.text = tObj.billDate
            //cell.billAmount.text = String(tObj.billAmount)
        }
        if bTemp.elementsEqual("Hydro")
        {
            let tObj =  billTemp[indexPath.row] as! HydroBill
            cell.billId.text = tObj.billId.intToString()
            cell.billType.text = bTemp
            cell.BillDate.text = tObj.billDate
            //cell.billAmount.text = String(tObj.billAmount)
        }
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let billDetails = sb.instantiateViewController(withIdentifier: "billDetails") as! BillDetailsViewController
        let tempArray = c!.returnBillArray()
        billDetails.billObj = tempArray[indexPath.row]
        navigationController?.pushViewController(billDetails, animated: true)
    }
    
}

