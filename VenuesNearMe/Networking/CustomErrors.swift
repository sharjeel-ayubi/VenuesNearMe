//
//  CustomErrors.swift
//  VenuesNearMe
//
//  Created by Ayubi on 1/11/22.
//

import Foundation

enum CustomErrors: Error {
    case invalidURL
}

extension CustomErrors: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .invalidURL:
            return "The provided URL or Endpoint is not correct".localized
        }
    }
}
