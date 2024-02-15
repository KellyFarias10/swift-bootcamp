//
//  GeneralArrayResponse.swift
//  Tests
//
//  Created by Kelly Jocelyn Farías Gómez on 08/02/24.
//

import Foundation
struct GeneralArrayResponse<T:Decodable>:Decodable{
    let success:Bool
    let data:[T]
}
