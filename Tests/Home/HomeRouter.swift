//
//  HomeRouter.swift
//  Tests
//
//  Created by Kelly Jocelyn Farías Gómez on 08/02/24.
//  
//

import Foundation
import UIKit

class HomeRouter {
    weak var viewController: UIViewController?

    static func createModule()->UIViewController{

        let view = HomeViewController(nibName: "HomeViewController", bundle: nil)

        let interactor = HomeInteractor()
        let router = HomeRouter()
        let presenter = HomePresenter(interface: view, interactor: interactor, router: router)
        
        
        view.presenter = presenter
        interactor.presenter = presenter
        
        router.viewController = view
        
        return view
    }
    
}

//MARK: RouterProtocol
extension HomeRouter: HomeRouterProtocol {
    
    func goTo(section:Section){
        switch section {
        case .details:
            break
        case .schedules:
            break
        }
    }
}
