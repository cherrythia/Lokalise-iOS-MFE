//
//  LocalizableStrings.swift
//  Lokalise-iOS-MFE
//
//  Created by Chia Wei Zheng Terry on 16/10/23.
//

import Foundation

enum LocalizableStrings: String {
    case otaKey = "ota_key"
    
    var localized: String {
        guard let bundle = Bundle(identifier: "com.test.Lokalise-iOS-MFE") else {
            return self.rawValue
        }
        
        return NSLocalizedString(self.rawValue, bundle: bundle, comment: "")
    }
}
