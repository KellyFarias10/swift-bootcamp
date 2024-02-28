//
//  LoginRouter.swift
//  Tests
//
//  Created by Kelly Jocelyn Farías Gómez on 31/01/24.
//  
//

import Foundation
import UIKit

class LoginRouter {
    weak var viewController: UIViewController?

    static func createModule()->UIViewController{

        let view = LoginViewController(nibName: "LoginViewController", bundle: nil)

        let interactor = LoginInteractor()
        let router = LoginRouter()
        
        let presenter = LoginPresenter(interface: view, interactor: interactor, router: router)
        
        
        view.presenter = presenter
        interactor.presenter = presenter
        
        router.viewController = view
        
        return view
    }
    
}

//MARK: RouterProtocol
extension LoginRouter: LoginRouterProtocol {
    
}