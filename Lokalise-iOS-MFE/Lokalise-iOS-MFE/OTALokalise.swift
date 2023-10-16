//
//  OTALokalise.swift
//  Lokalise-iOS-MFE
//
//  Created by Chia Wei Zheng Terry on 16/10/23.
//

import Foundation
import Lokalise

open class OTA {
    
    public init() {
        
    }
    
    open func StartOTA() {
        Lokalise.shared.setProjectID("455009485e1e85825682d2.64484346", token: "34df3a3b7f803c5d010873b68ecab009d8c4")
        
        Lokalise.shared.swizzleMainBundle()
        
        Lokalise.shared.localizationType = .prerelease
        
        Lokalise.shared.checkForUpdates { (updated, errorOrNil) in
            print("Updated: \(updated)\nError: \(errorOrNil)")
            
            print("""
                        Locale
                        
                        Locale.preferredLanguages
                        \(Locale.preferredLanguages)
                        Locale.current.identifier
                        \(Locale.current.identifier)
                        
                        
                        Bundle
                        
                        Bundle.main.localizations
                        \(Bundle.main.localizations)
                        Bundle.main.preferredLocalizations
                        \(Bundle.main.preferredLocalizations)
                        Bundle.main.developmentLocalization
                        \(Bundle.main.developmentLocalization ?? "undefined")
                        
                        
                        Lokalise
                        
                        Lokalise.shared.availableLocales .identifier
                        \(Lokalise.shared.availableLocales().map({$0.identifier}))
                        Lokalise.shared.localizationLocale.identifier
                        \(Lokalise.shared.localizationLocale.identifier)
                        Lokalise.shared.lokaliseBundleVersion
                        \(Lokalise.shared.lokaliseBundleVersion)
                        LokaliseFrameworkVersion
                        \(LokaliseFrameworkVersion)
                        """)
            
        }
    }
}

