//
//  ComponentsPresenter.swift
//  Tests
//
//  Created by Kelly Jocelyn Farías Gómez on 26/02/24.
//  
//

import Foundation

class ComponentsPresenter {
    //MARK: Properties
    var interactor: ComponentsInteractorInputProtocol?
    weak private var view: ComponentsViewProtocol?
    private let router: ComponentsRouterProtocol
    
    
    init(interface: ComponentsViewProtocol, interactor: ComponentsInteractorInputProtocol, router: ComponentsRouterProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }
}

//MARK: PresenterProtocol
extension ComponentsPresenter: ComponentsPresenterProtocol {
    
}

//MARK: Interactor->Presenter
extension ComponentsPresenter: ComponentsInteractorOutputProtocol {
    
}