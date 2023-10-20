//
//  LocalizableStrings.swift
//  Lokalise-iOS-MFE
//
//  Created by Chia Wei Zheng Terry on 16/10/23.
//

import Foundation
import Lokalise

enum LocalizableStrings: String {

    case otaKey = "ota_key"
    case something = "something"
    
    var localized: String {
        guard let bundle = Bundle(identifier: "com.test.Lokalise-iOS-MFE") else {
            return self.rawValue
        }
        
//        let local = NSLocalizedString(self.rawValue, bundle: bundle, comment: "")
//        return Lokalise.shared.localizedString(forKey: self.rawValue, value: local, table: "Localizable")
        return LokaliseLocalizedString(key: self.rawValue, value: nil, table: "Localizable", fallbackBundle: bundle)
    }
    
    func LokaliseLocalizedString(key: String, value: String?, table: String?, fallbackBundle: Bundle) -> String {
        let remoteValue = Lokalise.shared.localizedString(forKey: key, value: value, table: table)
        if (remoteValue == value) {
            return fallbackBundle.localizedString(forKey: key, value: value, table: table)
        } else {
            return remoteValue
        }
    }
}
