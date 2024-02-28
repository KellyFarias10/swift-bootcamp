//
//  ComponentsProtocols.swift
//  Tests
//
//  Created by Kelly Jocelyn Farías Gómez on 26/02/24.
//  
//

import Foundation

/// Description: View
protocol ComponentsViewProtocol: AnyObject {
    var presenter: ComponentsPresenterProtocol? {get set}
}

/// Description: Interactor (Presenter -> Interactor)
protocol ComponentsInteractorInputProtocol: AnyObject {
    var presenter: ComponentsInteractorOutputProtocol? {get set}
}

/// Description: Interactor->Presenter
protocol ComponentsInteractorOutputProtocol: AnyObject {

}

/// Description: Presenter
protocol ComponentsPresenterProtocol: AnyObject {
    var interactor: ComponentsInteractorInputProtocol? {get set}
}

/// Description: Router
protocol ComponentsRouterProtocol: AnyObject {
    
}