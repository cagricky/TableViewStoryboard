//
//  Network.swift
//  obssTest
//
//  Created by Çağrı  İnal  on 9.02.2022.
//

import Foundation
import Alamofire

class Network {
    
    func fetchData(completion: @escaping (Earthquake) -> Void) {
        let url = "https://apis.is/earthquake/is"
        AF.request(url).responseDecodable(of: Earthquake.self) { (response) in
            guard let items = response.value else {
                print(response.error ?? "Error!!!")
                return
            }
            completion(items)
        }
    }
}
