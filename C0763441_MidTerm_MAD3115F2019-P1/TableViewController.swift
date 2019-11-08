//
//  TableViewController.swift
//  C0763441_MidTerm_MAD3115F2019-P1
//
//  Created by MacStudent on 2019-10-31.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var custTable: UITableView!
    
    
    var sinObj = Singleton.getInstance()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        custTable.dataSource = self
        custTable.delegate = self
        sinObj.alreadyCustomer()
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sinObj.returnCount()
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let c = sinObj.returnCustObj(custId: Int(indexPath.row+1))
        let cell = tableView.dequeueReusableCell(withIdentifier: "custCell", for: indexPath)
        cell.textLabel?.text = c?.fullName
        return cell
    }

    @IBAction func add(_ sender: UIBarButtonItem) {
        
        let sb1=UIStoryboard(name: "Main", bundle: nil)
        let NewCustVC=sb1.instantiateViewController(withIdentifier: "NewCustVC") as! AddCustomerViewController
        navigationController?.pushViewController(NewCustVC, animated: true)
    }
    

    @IBAction func addCustomerBtn(_ sender: Any) {

        //performSegue(withIdentifier: "next", sender: nil)
        let sb1=UIStoryboard(name: "Main", bundle: nil)
        let NewCustVC=sb1.instantiateViewController(withIdentifier: "NewCustVC") as! AddCustomerViewController
        navigationController?.pushViewController(NewCustVC, animated: true)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if #available(iOS 13.0, *) {
            let vc = (storyboard?.instantiateViewController(identifier: "BillViewController") as? BillViewController)!
            self.navigationController?.pushViewController(vc, animated: true)
        } else {
            // Fallback on earlier versions
        }
    }
    
}
