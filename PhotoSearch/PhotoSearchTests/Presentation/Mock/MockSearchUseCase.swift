//
//  MockSearchUseCase.swift
//  PhotoSearchTests
//
//  Created by CHRISTIAN BEYNIS on 09/15/22.
//

import Foundation
@testable import PhotoSearch

class MokcSearchUseCase: SearchUseCase {
    
    let photoRecords = [PhotoRecord(id:1, previewURL: "testUrl")]
    
    func execute(for keyword: String) async throws -> [PhotoRecord] {
        if keyword == "empty_search_response" {
            throw  APIError.emptyRecords
        }else if keyword == "invalid_search_response" {
            throw APIError.jsonParsingFailed
        }
        return photoRecords
    }
}
