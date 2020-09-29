//
//  ViewController.swift
//  KeyChainWrapper
//
//  Created by Mohit Agrawal on 28/09/20.
//

import UIKit

enum KEYS: String {
    case userID = "USER_ID"
    case password = "PASSWORD"
}

class ViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextFielf: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func didTapLoginButton(_ sender: Any) {
        
        let userID = emailTextField.text
        let password = passwordTextFielf.text
        
        if !((userID ?? "").isEmpty || (password ?? "").isEmpty){
            
            WarmodroidKeyChain.shared[KEYS.userID.rawValue] = userID
            WarmodroidKeyChain.shared[KEYS.password.rawValue] = password
            
            let vc = storyboard?.instantiateViewController(identifier: "SuccessViewController") as! SuccessViewController
            present(vc, animated: true, completion: nil)
            
        }
        
    }
    
}

