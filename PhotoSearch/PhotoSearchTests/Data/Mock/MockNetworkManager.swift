//
//  MockNetworkManager.swift
//  PhotoSearch
//
//  Created by CHRISTIAN BEYNIS on 09/15/22.
//

import Foundation
@testable import PhotoSearch

class MockNetworkManager: Networkable {
    func get(apiRequest: ApiRequestType) async throws -> Data {
        
        let bundle = Bundle(for:MockNetworkManager.self)
        
        guard let url = bundle.url(forResource: apiRequest.params["q"], withExtension:"json"),
              let data = try? Data(contentsOf: url) else {
            throw APIError.invalidData
        }
        return data
    }
    
}
