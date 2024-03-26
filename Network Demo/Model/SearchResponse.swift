//
//  SearchResponse.swift
//  Network Demo
//
//  Created by Mark Bergeson on 3/25/24.
//

import Foundation

struct SearchResponse: Decodable {
    
    var total_results: Int?
    var page: Int?
    var per_page: Int?
    var photos: [Photo]
    var next_page: String?
    
}

struct Photo: Decodable {
    
    var id: Int?
    var width: Int?
    var height: Int?
    var url: String?
    var photographer: String?
    var photographer_url: String?
    var photographer_id: Int?
    var avg_color: String?
    var src: PhotoSize?
    var liked: Bool?
    var alt: String?
}

struct PhotoSize: Decodable {
    
    var original: String?
    var large2x: String?
    var large: String?
    var medium: String?
    var small: String?
    var portrait: String?
    var landscape: String?
    var tiny: String?
    
}
