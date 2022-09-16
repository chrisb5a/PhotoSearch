//
//  SearchRepository.swift
//  PhotoSearch
//
//  Created by CHRISTIAN BEYNIS on 09/15/22.
//

import Foundation

protocol SearchRepository {
    func getImages(for keyWord: String) async throws -> [PhotoRecord]
}
