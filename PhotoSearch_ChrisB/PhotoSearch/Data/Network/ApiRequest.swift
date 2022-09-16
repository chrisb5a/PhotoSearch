//
//  ApiRequest.swift
//  PhotoSearch
//
//  Created by Christia.beynis on 08/15/22.
//

import Foundation

protocol ApiRequestType {
    var baseUrl: String {get}
    var path: String {get}
    var params: [String:String] {get}
}

struct ApiRequest: ApiRequestType {
    var baseUrl: String
    var path: String
    var params: [String : String]
}
