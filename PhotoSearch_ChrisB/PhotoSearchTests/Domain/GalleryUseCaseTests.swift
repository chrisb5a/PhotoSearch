//
//  GalleryUseCaseTests.swift
//  PhotoSearchTests
//
//  Created by CHRISTIAN BEYNIS on 09/15/22.
//

import XCTest
@testable import PhotoSearch

class GalleryUseCaseTests: XCTestCase {
    
    var galleryUseCase: GalleryUseCase!
    
    override  func setUp() {
        galleryUseCase = DefualtGalleryUseCase(galleryRepository: MockGalleryRepository())
    }
    
    // Valid URL Image Download
    func testExecute_validURL() async {
        
        let imageData =  try? await galleryUseCase.execute(for: "validUrl")
        
        XCTAssertNotNil(imageData)
    }
    
    // Valid URL Image Download
    func testExecute_InvalidURL() async {
        
        let imageData =  try? await galleryUseCase.execute(for: "InvalidUrl")
        
        XCTAssertNil(imageData)
    }
    
}
