//
//  String+Extension.swift
//  VenuesNearMe
//
//  Created by Ayubi on 1/11/22.
//

import Foundation

extension String {
    var localized: String {
        NSLocalizedString(self, comment: "")
    }
}
