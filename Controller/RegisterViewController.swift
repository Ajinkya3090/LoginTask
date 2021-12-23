//
//  RegisterViewController.swift
//  LoginTask
//
//  Created by Macintosh on 14/12/21.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var nameTxtField: UITextField!
    @IBOutlet weak var lastNameTxtField: UITextField!
    @IBOutlet weak var emailIdTxtField: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func signInBtn(_ sender: UIButton) {
        let signInObj = storyboard?.instantiateViewController(identifier: "ProfileViewController") as! ProfileViewController
        signInObj.strFirstName = nameTxtField.text
        signInObj.strLastName = lastNameTxtField.text
        signInObj.stremailId = emailIdTxtField.text
        
        let dict = ["FirstName":nameTxtField.text,"LastName":lastNameTxtField.text,"EmailId":emailIdTxtField.text,"Password":passwordTxtField.text]
        DataBaseHelper.shareinstance.save(object: dict as! [String : String])
        
        if let email = emailIdTxtField.text, let password = passwordTxtField.text{
            if !email.validateEmailId(){
                openAlert(title: "Alert", message: "Please Enter Valid Email ID.", alertStyle: .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in
                    print("Okay clicked!")
                }])
            }else if !password.validatePassword(){
                openAlert(title: "Alert", message: "Please Enter Valid Password", alertStyle: .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in
                    print("Okay clicked!")
                }])
            }else{
                self.navigationController?.pushViewController(signInObj, animated: true)
            }
        }else{
            openAlert(title: "Alert", message: "Please add detail.", alertStyle: .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in
                print("Okay clicked!")
            }])
        }
        
    }
    
}

