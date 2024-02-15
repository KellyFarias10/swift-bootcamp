//
//  LocalRequest.swift
//  Tests
//
//  Created by Kelly Jocelyn Farías Gómez on 08/02/24.
//

import Foundation
class LocalRequest{
    static let shared=LocalRequest()
    let debug:Bool = true
    func readMock<T: Decodable>(filename: String, type: T.Type) -> T? {
        if let url = Bundle.main.url(forResource: filename, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(T.self, from: data)
                return jsonData
            } catch {
                print("Error decoding JSON: \(error)")
            }
        }
        return nil
    }
}

