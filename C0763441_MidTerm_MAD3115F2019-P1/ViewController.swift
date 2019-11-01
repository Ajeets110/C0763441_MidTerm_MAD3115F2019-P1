//
//  ViewController.swift
//  C0763441_MidTerm_MAD3115F2019-P1
//
//  Created by MacStudent on 2019-10-30.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var username: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let defObj = Singleton.getInstance()
        defObj.alreadyCustomer()
    }
    
    @IBAction func login(_ sender: Any) {
        let userName = username.text!
        if userName.count > 10
        {
            let pass = password.text!
            let user = username.text!
            if user == "ajeets110@gmail.com"
            {
                if pass == "1234"
                {
                    print("Login Success")
                    performSegue(withIdentifier: "loginSucess", sender: nil)
                    
                }else{
                    print("Incorrect Password")
                }
            }else{
                print("Incorrect Email")
            }
            
            
        } else{
            let alert = UIAlertController(title: "Email Error", message: "Your Email is less than 10 charachter. Please enter a valid email", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            alert.addAction(UIAlertAction(title: "Ignore", style: .destructive, handler: nil))
            
            self.present(alert, animated: true)
            
        }
    }
    
    
    
}

