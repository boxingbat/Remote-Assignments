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
    @IBAction func segmentedControlValueChanged(_ sender: UISegmentedControl) {
            
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
    @IBAction func signUp(_ sender: UIButton){
        let selectedIndex = Switch.selectedSegmentIndex
        // 當用戶註冊時 沒有輸入check password , 我們以empty報錯優先 確定用戶有輸入值再做 sign up check
        if selectedIndex == 0 || CheckTextField.text?.isEmpty == true {
            return
        }
        
        // Check if PasswordTextField == CheckTextField
        if PasswordTextField.text != CheckTextField.text {
            let alertController = UIAlertController(title: "Error", message: "Signup Fail", preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(okAction)
            
            present(alertController, animated: true, completion: nil)
        }
    }
    @IBAction func checkAccountTextField(_ sender: UIButton){
    //Empty Check
        if let text = AccountTextField.text, text.isEmpty {
                    let alertController = UIAlertController(title: "Error", message: "Account should not be empty", preferredStyle: .alert)
                    
                    let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                    alertController.addAction(okAction)
                    
                    present(alertController, animated: true, completion: nil)
                } else {
                    return
                }
            }
    
    
    @IBAction func checkPasswordTextField(_ trigger: UIButton){
        //Empty Check
        if let text = PasswordTextField.text, text.isEmpty {
                    let alertController = UIAlertController(title: "Error", message: "Password should not be empty", preferredStyle: .alert)
                    
                    let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                    alertController.addAction(okAction)
                    
                    present(alertController, animated: true, completion: nil)
                } else {
                    return
                }
            }
    
    @IBAction func checkCheckPasswordTextField(_ trigger: UIButton) {
        let selectedIndex = Switch.selectedSegmentIndex
        
        //如果在login 介面, 允許Check Password 為空值 (我們也限定使用者不能輸入）
        if selectedIndex == 0 {
            return
        }
        //Empty Check
        if let text = CheckTextField.text, text.isEmpty {
            let alertController = UIAlertController(title: "Error", message: "Check password should not be empty", preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(okAction)
            
            present(alertController, animated: true, completion: nil)
        } else {
            return
        }
    }
    
    //login Check
    @IBAction func login(_ sender: UIButton) {
        let selectedIndex = Switch.selectedSegmentIndex

        //只有在確定沒有帳號密碼沒有空值 且位於login介面 才跑這隻函示
        if selectedIndex == 1 || PasswordTextField.text?.isEmpty == true{
            return
        }
        if AccountTextField.text?.isEmpty == true{
            return
        }

        if AccountTextField.text == "appworks_school" && PasswordTextField.text == "1234"{
            // Login successful
            let alertController = UIAlertController(title: "Success", message: "Login successful", preferredStyle: .alert)

            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(okAction)

            present(alertController, animated: true, completion: nil)
        } else {
            // Login failed
            let alertController = UIAlertController(title: "Error", message: "Login fail", preferredStyle: .alert)

            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(okAction)

            present(alertController, animated: true, completion: nil)
        }
    }
   

}


