//
//  HomePresenter.swift
//  Tests
//
//  Created by Kelly Jocelyn Farías Gómez on 08/02/24.
//  
//

import Foundation

class HomePresenter {
    //MARK: Properties
    var interactor: HomeInteractorInputProtocol?
    weak private var view: HomeViewProtocol?
    private let router: HomeRouterProtocol
    
    
    init(interface: HomeViewProtocol, interactor: HomeInteractorInputProtocol, router: HomeRouterProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }
}

//MARK: PresenterProtocol
extension HomePresenter: HomePresenterProtocol {
    func goTo(section: Section) {
        
    }
    
    func goTo(section: Int, option: Int) {
       
    }
    
    func getItem(index: Int, sectio: Int) -> HomeItemEntity {
        return interactor?.getItem(index: index, sectio: sectio) ?? HomeItemEntity(name: "", status: nil)
    }
    
    func getCountSections() -> Int {
        return interactor?.getCountSections() ?? 0
    }
    
    func getCountOptions(section: Int) -> Int {
        return interactor?.getCountOptions(section: section) ?? 0
    }
    
    func willAppear() {
        interactor?.getItems()
    }
    
    
}

//MARK: Interactor->Presenter
extension HomePresenter: HomeInteractorOutputProtocol {
    func reload() {
        view?.reload()
    }
    
   
    
    
    
}
