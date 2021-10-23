//
//  EndpointManager.swift
//  E-Store
//
//  Created by DarkBringer on 22.10.2021.
//

import Foundation

enum EndpointManager {
    
    enum BaseURL: CustomStringConvertible {
        case main
        
        var description: String {
            switch self {
                case .main:
                    return "https://gateway.marvel.com:443/v1/public/"
            }
        }
    }
    
    enum Paths: CustomStringConvertible {
        
        case characters
        
        var description: String {
            switch self {
                case .characters:
                    return "characters"
            }
        }
        
        
    }
    
}
