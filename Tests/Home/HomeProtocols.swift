//
//  HomeProtocols.swift
//  Tests
//
//  Created by Kelly Jocelyn Farías Gómez on 08/02/24.
//  
//

import Foundation

/// Description: View
protocol HomeViewProtocol: AnyObject {
    var presenter: HomePresenterProtocol? {get set}
    func reload()
}

/// Description: Interactor (Presenter -> Interactor)
protocol HomeInteractorInputProtocol: AnyObject {
    var presenter: HomeInteractorOutputProtocol? {get set}
    var responseItems:[HomeItemsResponse]? {get set}
    func getItems()
    func getCountSections()->Int
    func getCountOptions(section:Int)->Int
    func getItem(index:Int,sectio:Int)->HomeItemEntity
}

/// Description: Interactor->Presenter
protocol HomeInteractorOutputProtocol: AnyObject {
    func reload()

}

/// Description: Presenter
protocol HomePresenterProtocol: AnyObject {
    var interactor: HomeInteractorInputProtocol? {get set}
    func willAppear()
    func getCountSections()->Int
    func getCountOptions(section:Int)->Int
    func getItem(index:Int,sectio:Int)->HomeItemEntity
    func goTo(section:Section)
}

/// Description: Router
protocol HomeRouterProtocol: AnyObject {
    func goTo(section:Section)
    
}
