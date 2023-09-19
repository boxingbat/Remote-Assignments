//
//  ViewController.swift
//  Week3 Assignment
//
//  Created by 1 on 2023/9/14.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var AccountTextField: UITextField!
    @IBOutlet weak var CheckTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    @IBOutlet weak var CheckLabel: UILabel!
    @IBOutlet weak var Switch: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set the picker as black
        Switch.selectedSegmentTintColor = UIColor.black
        //change the taxt to black while it is not selected
        Switch.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .normal)
        //change the text to white while it is selected
        Switch.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .selected)
        
        CheckLabel.textColor = UIColor.gray
        CheckTextField.backgroundColor = UIColor.gray
        CheckTextField.isEnabled = false
        
    }
    
    @IBAction func segmentControlValueChanged(_ sender: UISegmentedControl) {
        let selectedIndex = sender.selectedSegmentIndex
        
        if selectedIndex == 0 {
            CheckTextField.text = "" //如果在sign up且Check password 有值得情況下切回來 會自動把值刪除
            CheckLabel.textColor = UIColor.gray
            CheckTextField.backgroundColor = UIColor.lightGray
            CheckTextField.isEnabled = false
        } else if selectedIndex == 1 {
            //back to noremal
            CheckLabel.textColor = UIColor.black
            CheckTextField.backgroundColor = UIColor.white
            CheckTextField.isEnabled = true
        }
    }
    
    
    @IBAction func Submit(_ sender: Any) {
        let selectedIndex = Switch.selectedSegmentIndex
        if selectedIndex == 0 {
            checkAccountTextField()
            checkPasswordTextField()
            login()
        }else{
            checkAccountTextField()
            checkPasswordTextField()
            checkCheckPasswordTextField()
            signUp()
        }
        func PresentAlert(title: String, message: String) {
            let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
        }
        
        func signUp(){
            
            // Check if PasswordTextField == CheckTextField
            if PasswordTextField.text != CheckTextField.text {
                PresentAlert(title: "Error", message: "Signup Fail")
            }
        }
        func checkAccountTextField(){
            //Empty Check
            if let text = AccountTextField.text, text.isEmpty {
                PresentAlert(title: "Error", message: "Account should not be empty")
            } else {
                return
            }
        }
        
        
        func checkPasswordTextField(){
            //Empty Check
            if let text = PasswordTextField.text, text.isEmpty {
                PresentAlert(title: "Error", message: "Password should not be empty")
            } else {
                return
            }
        }
        
        func checkCheckPasswordTextField() {
            //Empty Check
            if let text = CheckTextField.text, text.isEmpty {
                PresentAlert(title: "Error", message: "Check Password should not be empty")
            } else {
                return
            }
        }
        
        //login Check
        func login() {
            if AccountTextField.text?.isEmpty == true{
                return
            }
            
            if AccountTextField.text == "appworks_school" && PasswordTextField.text == "1234"{
                // Login successful
                PresentAlert(title: "Sucess", message: "Login Sucessful")
            } else {
                // Login failed
                PresentAlert(title: "Error", message: "Login Fail")
                
            }
        }
        
        
    }
    
}
