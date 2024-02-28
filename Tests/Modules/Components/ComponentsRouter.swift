//
//  ComponentsRouter.swift
//  Tests
//
//  Created by Kelly Jocelyn Farías Gómez on 26/02/24.
//  
//

import Foundation
import UIKit

class ComponentsRouter {
    weak var viewController: UIViewController?

    static func createModule()->UIViewController{

        let view = ComponentsViewController(nibName: "ComponentsViewController", bundle: nil)

        let interactor = ComponentsInteractor()
        let router = ComponentsRouter()
        
        let presenter = ComponentsPresenter(interface: view, interactor: interactor, router: router)
        
        
        view.presenter = presenter
        interactor.presenter = presenter
        
        router.viewController = view
        
        return view
    }
    
}

//MARK: RouterProtocol
extension ComponentsRouter: ComponentsRouterProtocol {
    
}