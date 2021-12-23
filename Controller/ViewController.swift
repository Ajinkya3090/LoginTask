//
//  ViewController.swift
//  LoginTask
//
//  Created by Macintosh on 14/12/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func logInBtn(_ sender: UIButton) {
        if emailTxt.text?.isEmpty == false && passwordTxt.text?.isEmpty == false{
        if let vcObj = storyboard?.instantiateViewController(identifier: "ProfileViewController")as? ProfileViewController{
            navigationController?.pushViewController(vcObj, animated: true)
        }
    }
        else{
            showAlert(title: "warning", massege: "Fill All The Fields")
        }
    }
    
    func showAlert(title : String,massege:String) {
        let alert = UIAlertController(title: title, message: massege, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    @IBAction func newUser(_ sender: UIButton) {
        if let newObj = storyboard?.instantiateViewController(identifier: "RegisterViewController")as? RegisterViewController{
            navigationController?.pushViewController(newObj, animated: true)
        }
    }
}

