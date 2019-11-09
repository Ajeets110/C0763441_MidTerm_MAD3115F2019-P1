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
    let myPickerData = [String](arrayLiteral: "Hydro", "Internet", "Mobile")

    

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
                txt1.isHidden = false
                txt1.placeholder = "Manufacturer Name"
                let manName = txt1.text!
                
                txt2.isHidden = false
                txt2.placeholder = "Plan Name"
                let planName = txt2.text
                
                txt3.isHidden = false
                txt3.placeholder = "Minutes Used"
                let minUsed = Int(txt3.text!)
                
                txt4.isHidden = false
                txt4.placeholder = "Internet Used"
                let IntUsed = Float(txt4.text!)
                
                if(planName != nil && manName != nil && IntUsed != nil && minUsed != nil){
                    let m = MobileBill(manufacturerName: manName, planName: planName!, internetUsed: IntUsed!, minutesUsed: minUsed!, billAmount: billAmount!, billId: billId!, billType: Bill.bTypes(rawValue: billType)!, billDate: billDate)
                
                    c!.addBill(Bill: m)
                     
                     
                 }else{
                     let alert = UIAlertController(title: "Empty Field", message: "Please Fill all th details", preferredStyle: .alert)
                     
                     alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                     
                     self.present(alert, animated: true)
                 }
                
            }
            
        }
        let alert = UIAlertController(title: "Bill Added", message: "Bill was Successfully Added.", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        self.present(alert, animated: true)
        navigationController?.popViewController(animated: true)
        }
        
    @IBAction func billType(_ sender: Any) {
        
        let picker = UIPickerView()
        picker.delegate = self
        picker.dataSource = self
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(viewTapped(gstureRecognizer:)))
        view.addGestureRecognizer(tapGesture)
        bill_Type.inputView = picker
    }
    
        @objc func viewTapped(gstureRecognizer: UITapGestureRecognizer){
            
        view.endEditing(true)
        let billTemp = bill_Type.text
        if (billTemp?.elementsEqual("Mobile"))!
        {
            txt1.isHidden = false
            txt2.isHidden = false
            txt3.isHidden = false
            txt4.isHidden = false
            
        }
       
            
        }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
           return 1
       }
       
       func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return myPickerData.count
       }
    func pickerView( _ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
     return myPickerData[row]
    }
     
    func pickerView( _ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        //let tapGesture = UITapGestureRecognizer(target: self, action: #selector(viewTapped(gestureRecognizer:)))
        //view.addGestureRecognizer(tapGesture)
        bill_Type.text = myPickerData[row]
        
        
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


