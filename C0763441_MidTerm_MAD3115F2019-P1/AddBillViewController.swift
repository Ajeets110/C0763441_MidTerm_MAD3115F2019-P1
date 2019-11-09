//
//  AddBillViewController.swift
//  C0763441_MidTerm_MAD3115F2019-P1
//
//  Created by MacStudent on 2019-11-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class AddBillViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    var c:Customer?=nil
    
    @IBOutlet weak var bill_ID: UITextField!
    
    @IBOutlet weak var bill_Type: UITextField!
    
    @IBOutlet weak var bill_Date: UITextField!
    
    @IBOutlet weak var bill_amount: UITextField!
    
    @IBOutlet weak var txt1: UITextField!
    
    @IBOutlet weak var txt2: UITextField!
    
    @IBOutlet weak var txt3: UITextField!
    
    @IBOutlet weak var txt4: UITextField!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        <#code#>
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveBill(_ sender: Any) {
        let billId = Int(bill_ID.text!)
        let billType = String(bill_Type.text!)
        let billDate = String(bill_Date.text!)
        let billAmount = Float(bill_amount.text!)
        
        if (billId == nil || billType == "" || billDate == "" || billAmount! == 0.0){
            
                let alert = UIAlertController(title: "Empty Field", message: "Please Fill all th details", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                
                self.present(alert, animated: true)
            }
        else{
            if billType == "Mobile"
            {
                    
            }
        }
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
