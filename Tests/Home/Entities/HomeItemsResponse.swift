//
//  HomeItemsResponse.swift
//  Tests
//
//  Created by Kelly Jocelyn Farías Gómez on 08/02/24.
//

import Foundation
struct HomeItemsResponse:Decodable{
    let name:String
    let status:Int
    let options:[HomeOptionsResponse]
    enum CodingKeys:String,CodingKey{
        case status="status_id"
        case name,options
    }
}

struct HomeOptionsResponse:Decodable{
    let name:String
    let id:Int
}
