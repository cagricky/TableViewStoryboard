//
//  Earthquake.swift
//  obssTest
//
//  Created by Çağrı  İnal  on 9.02.2022.
//

import Foundation

struct Earthquake: Decodable {
    
    let results : [Results]?

    enum CodingKeys: String, CodingKey {
        case results = "results"
    }
}

struct Results: Decodable {
    
    let latitude : Double?
    let longitude : Double?
    let humanReadableLocation : String?

    enum CodingKeys: String, CodingKey {
        case latitude = "latitude"
        case longitude = "longitude"
        case humanReadableLocation = "humanReadableLocation"
    }
}
