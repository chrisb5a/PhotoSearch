//
//  PhotoCollectionViewCell.swift
//  PhotoSearch
//
//  Created by Christia.beynis on 08/15/22.
//

import UIKit

class GalleryCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var galleryImageView: UIImageView!
    
    override func prepareForReuse() {
        self.galleryImageView.image = nil
    }
}
