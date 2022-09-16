//
//  GalleryUseCase.swift
//  PhotoSearch
//
//  Created by CHRISTIAN BEYNIS on 09/15/22.
//

import Foundation

protocol GalleryUseCase {
    func execute(for url: String) async throws -> Data
}

final class DefualtGalleryUseCase {
    private let galleryRepository: GalleryRepository

    init(galleryRepository: GalleryRepository) {
        self.galleryRepository = galleryRepository
    }
}

extension DefualtGalleryUseCase: GalleryUseCase {
    func execute(for url: String) async throws -> Data {
        do {
            return  try await galleryRepository.getImages(for: url)
        }catch {
            throw error
        }
    }
}
