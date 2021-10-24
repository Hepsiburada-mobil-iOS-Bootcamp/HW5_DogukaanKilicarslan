//
//  AccessProviderProtocol.swift
//  WeatherApplication
//
//  Created by Erkut Bas on 23.10.2021.
//

import Foundation

protocol AccessProviderManagerProtocol {
 
    func returnUniqueData() -> String
    func returnApiKey() -> String
    func returnHash() -> String
    
}
