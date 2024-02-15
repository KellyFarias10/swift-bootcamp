//
//  HomeItemEntity.swift
//  Tests
//
//  Created by Kelly Jocelyn Farías Gómez on 08/02/24.
//

import Foundation
struct HomeItemEntity:Decodable{
    let name:String
    let status:Int?
}
enum Section:Int{
    init(section:Int,option:Int) {
        switch section {
        case 0 :
            switch option {
            case 1: 
                self = .details
                break
            case 2: 
                self = .schedules
                break
            default:
                break
            }
            break
        case 1: 
            break
        case 2: 
            break
        default:
            break
        }
        self = .details
    }
    case details
    case schedules
}
