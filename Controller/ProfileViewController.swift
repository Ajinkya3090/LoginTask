//
//  ProfileViewController.swift
//  LoginTask
//
//  Created by Macintosh on 14/12/21.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var firstNamelbl: UILabel!
    @IBOutlet weak var lastNamelbl: UILabel!
    @IBOutlet weak var emailIdlbl: UILabel!
    
    var strFirstName:String! = nil
    var strLastName:String! = nil
    var stremailId:String! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstNamelbl.text = strFirstName
        lastNamelbl.text = strLastName
        emailIdlbl.text = stremailId
        
    }
    
    @IBAction func logoutBtn(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    
    
}
