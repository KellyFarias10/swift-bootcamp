//
//  LoginViewController.swift
//  Tests
//
//  Created by Kelly Jocelyn Farías Gómez on 31/01/24.
//  
//

import UIKit

class LoginViewController: UIViewController {
    var presenter: LoginPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

//MARK: ViewProtocol
extension LoginViewController: LoginViewProtocol {
    
}

