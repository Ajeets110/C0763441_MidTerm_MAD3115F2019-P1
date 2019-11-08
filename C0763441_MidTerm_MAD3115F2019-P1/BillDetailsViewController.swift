//
//  BillDetailsViewController.swift
//  C0763441_MidTerm_MAD3115F2019-P1
//
//  Created by MacStudent on 2019-11-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class BillDetailsViewController: UIViewController {
//MOBILE id date, type, manu name, plan name, minutes used, internet used, bill amount,
    //INTERNET id, date, type, provider name, data used, bill amount
    // HYDRO id, date, type, agency name, unit consumed,, bill amount
    
    var billObj: Bill? = nil
    
    @IBOutlet weak var bill_id: UITextField!
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label3: UILabel!
    
    @IBOutlet weak var label4: UILabel!
    
    @IBOutlet weak var txt1: UITextField!
    
    @IBOutlet weak var txt2: UITextField!
    
    @IBOutlet weak var txt3: UITextField!
    
    @IBOutlet weak var txt4: UITextField!
    
    @IBOutlet weak var txtID: UITextField!
    
    @IBOutlet weak var txttype: UITextField!
    
    @IBOutlet weak var txtDate: UITextField!
    
    @IBOutlet weak var txtAmount: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        txtID.text = billObj?.billId
        txttype.text = billObj?.billType
        txtDate.text =
        
        
        
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
