//
//  LoginPresenter.swift
//  Tests
//
//  Created by Kelly Jocelyn Farías Gómez on 31/01/24.
//  
//

import Foundation

class LoginPresenter {
    //MARK: Properties
    var interactor: LoginInteractorInputProtocol?
    weak private var view: LoginViewProtocol?
    private let router: LoginRouterProtocol
    
    
    init(interface: LoginViewProtocol, interactor: LoginInteractorInputProtocol, router: LoginRouterProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }
}

//MARK: PresenterProtocol
extension LoginPresenter: LoginPresenterProtocol {
    
}

//MARK: Interactor->Presenter
extension LoginPresenter: LoginInteractorOutputProtocol {
    
}