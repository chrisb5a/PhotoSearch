//
//  ViewStates.swift
//  PhotoSearch
//
//  Created by Christia.beynis on 08/15/22.
//

import Foundation

enum SearchViewStates: Equatable {
    case showActivityIndicator
    case showPhotosView
    case showError(String)
    case none
}
