//
//  SearchRepository.swift
//  PhotoSearch
//
//  Created by Christia.beynis on 08/15/22.
//

import Foundation

protocol SearchRepository {
    func getImages(for keyWord: String) async throws -> [PhotoRecord]
}
