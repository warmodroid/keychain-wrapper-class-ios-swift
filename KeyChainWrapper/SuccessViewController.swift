//
//  SuccessViewController.swift
//  KeyChainWrapper
//
//  Created by Mohit Agrawal on 28/09/20.
//

import UIKit

class SuccessViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let userID = WarmodroidKeyChain.shared[KEYS.userID.rawValue] ?? ""
        let password = WarmodroidKeyChain.shared[KEYS.password.rawValue] ?? ""
        
        label.text = "User ID is: \(String(describing: userID))\nPassword is: \(String(describing: password))"
    }
}
