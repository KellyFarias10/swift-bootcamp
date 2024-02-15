//
//  HomeViewController + ViewProtocol.swift
//  Tests
//
//  Created by Kelly Jocelyn Farías Gómez on 08/02/24.
//

import Foundation
//MARK: ViewProtocol
extension HomeViewController: HomeViewProtocol {
    func reload() {
        tableSteps.reloadData()
    }
}
