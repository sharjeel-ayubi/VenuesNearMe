//
//  GetVenuesRequest.swift
//  VenuesNearMe
//
//  Created by Ayubi on 1/17/22.
//

import Foundation

struct GetVenuesRequest : DataRequest {
    
    typealias Response = VenuesResponse
    
    var venueDTO: VenueRequestDTO
    var searchQuery: String
    
    var url: String {
        let path = "poiSearch/" + searchQuery
        return NetworkConstants.BASE_URL + path
    }
    
    var method: HTTPMethod {
        .get
    }
    var queryItems: [String:String] {
        return venueDTO.getDictionary()
    }
    
    init(query: String, dto: VenueRequestDTO) {
        venueDTO = dto
        searchQuery = query + ".json"
    }
}

struct VenueRequestDTO : Codable {
    
    var lat: String
    var lon: String
    var radius: String
    private var key: String
    
    init(lat: String, long: String, radius: String = "50000") {
        self.lat = lat
        self.lon = long
        self.radius = radius
        self.key = NetworkConstants.API_KEY
    }
    
    func getDictionary() -> [String:String] {
        return self.dictionary
    }
}

