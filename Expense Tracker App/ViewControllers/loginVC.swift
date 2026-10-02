//
//  loginVC.swift
//  Expense Tracker App
//
//  Created by Yash Bhimani on 24/09/26.
//

import UIKit

class loginVC: UIViewController {
    
    @IBOutlet weak var appleBtn: UIButton!
    @IBOutlet weak var googleBtn: UIButton!
    @IBOutlet weak var signInBtn: UIButton!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        appleBtn.layer.borderWidth = 2
        googleBtn.layer.borderWidth = 2
        txtEmail.layer.borderWidth = 2
        txtPassword.layer.borderWidth = 2
        txtEmail.layer.cornerRadius = 5
        txtPassword.layer.cornerRadius = 5

        appleBtn.layer.borderColor = UIColor(hex: "#EBF6ED").cgColor
        googleBtn.layer.borderColor = UIColor(hex: "#EBF6ED").cgColor
        txtEmail.layer.borderColor = UIColor(hex: "#EBF6ED").cgColor
        txtPassword.layer.borderColor = UIColor(hex: "#EBF6ED").cgColor
        
    }
    
    @IBAction func signInBtnClick(_ sender: Any) {
    }
    
    @IBAction func appleBtnClick(_ sender: Any) {
    }
    
    @IBAction func googleBtnClick(_ sender: Any) {
    }
    
    @IBAction func signUpBtnClick(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "signUpVC") as! signUpVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func forgetBtnClick(_ sender: Any) {
        
    }
    
    @IBAction func backBtnClick(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
