//
//  LoginProtocols.swift
//  Tests
//
//  Created by Kelly Jocelyn Farías Gómez on 31/01/24.
//  
//

import Foundation

/// Description: View
protocol LoginViewProtocol: AnyObject {
    var presenter: LoginPresenterProtocol? {get set}
}

/// Description: Interactor (Presenter -> Interactor)
protocol LoginInteractorInputProtocol: AnyObject {
    var presenter: LoginInteractorOutputProtocol? {get set}
}

/// Description: Interactor->Presenter
protocol LoginInteractorOutputProtocol: AnyObject {

}

/// Description: Presenter
protocol LoginPresenterProtocol: AnyObject {
    var interactor: LoginInteractorInputProtocol? {get set}
}

/// Description: Router
protocol LoginRouterProtocol: AnyObject {
    
}