//
//  Codable+Extension.swift
//  VenuesNearMe
//
//  Created by Ayubi on 1/17/22.
//

import Foundation

extension Encodable {
    subscript(key: String) -> String? {
        return dictionary[key]
    }
    var dictionary: [String: String] {
        return (try? JSONSerialization.jsonObject(with: JSONEncoder().encode(self))) as? [String: String] ?? [:]
    }
}
