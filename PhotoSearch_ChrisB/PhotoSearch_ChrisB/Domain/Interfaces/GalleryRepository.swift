//
//  GalleryRepository.swift
//  PhotoSearch
//
//  Created by Christia.beynis on 08/15/22.
//

import Foundation

protocol GalleryRepository {
   func getImages(for url: String) async throws -> Data
}

protocol ImageCacher {
    func getImage(url:String)-> Data?
    func saveImage(url:String, data:Data)
}
