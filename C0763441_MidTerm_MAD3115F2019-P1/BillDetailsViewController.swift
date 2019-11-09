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
        
        txtID.text = billObj?.billId.intToString()
        txttype.text = billObj?.billType.rawValue
        txtDate.text = billObj?.billDate
        
        
        // Dynamic Labels
        
        if billObj!.billType.rawValue == "Mobile"{
            
            
            label1.isHidden = false
            label1.text = "Manufacturer Name"
            
            label2.isHidden = false
            label2.text = "Plan Name"
            
            label3.isHidden = false
            label3.text = "Minutes Used"
            
            label4.isHidden = false
            label4.text = "Internet Used"
            
            let m = billObj as! MobileBill
            
            txtAmount.text = m.billAmount.fltToString()
            
            txt1.isHidden = false
            txt1.text = m.manufacturerName
            
            txt2.isHidden = false
            txt2.text = m.planName
            
            txt3.isHidden = false
            txt3.text = m.minutesUsed.intToString()
            
            txt4.isHidden = false
            txt4.text = m.internetUsed.fltToString()
        }
        
        if billObj!.billType.rawValue == "Internet"{
            
            label1.isHidden = false
            label1.text = "Provider Name"
            
            label2.isHidden = false
            label2.text = "Data Used"
            
            let i = billObj as! InternetBill
            
            txtAmount.text = i.billAmount.fltToString()
            
            txt1.isHidden = false
            txt1.text = i.providerName
            
            txt2.isHidden = false
            txt2.text = i.gbUsed.fltToString()
            
        }
        
         if billObj!.billType.rawValue == "Hydro"{
                   
                   label1.isHidden = false
                   label1.text = "Agency Name"
                   
                   label2.isHidden = false
                   label2.text = "Unit Used"
                   
                   let h = billObj as! HydroBill
            
            txtAmount.text = h.billAmount.fltToString()
            
                   txt1.isHidden = false
            txt1.text = h.agencyName
                   
                   txt2.isHidden = false
            txt2.text = h.unitConsumed.intToString()
                   
               }
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
