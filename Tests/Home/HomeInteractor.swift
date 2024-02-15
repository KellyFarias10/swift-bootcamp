//
//  HomeInteractor.swift
//  Tests
//
//  Created by Kelly Jocelyn Farías Gómez on 08/02/24.
//  
//

import Foundation

class HomeInteractor: HomeInteractorInputProtocol {
    
    weak var presenter: HomeInteractorOutputProtocol?
    var responseItems: [HomeItemsResponse]?
    
    func getItems() {
        self.responseItems=[]
        if LocalRequest.shared.debug{
            guard let response=LocalRequest.shared.readMock(filename: "home_sections", type: GeneralArrayResponse<HomeItemsResponse>.self)else{
                return
            }
            if response.success{
                self.responseItems=response.data
            }
            presenter?.reload()
        }else{
            
            //Alamofire o RemoteRequest
        }
        
        
    }
    
    func getCountSections() -> Int {
        return responseItems?.count ?? 0
    }
    
    func getCountOptions(section: Int) -> Int {
        return (responseItems?[section].options.count ?? 0) + 1
    }
    func getItem(index: Int, sectio: Int) -> HomeItemEntity {
        let section=responseItems?[sectio]
        if index == 0 {
            return HomeItemEntity(name: section?.name ?? "", status: section?.status ?? 0)
        }else{
            let option = section?.options[index-1]
            return HomeItemEntity(name: option?.name ?? "", status: nil)
        }
        
    }
}
