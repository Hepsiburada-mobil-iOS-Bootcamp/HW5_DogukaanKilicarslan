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
                    return "https://fakerapi.it/api/v1/products/"
            }
        }
    }
    
    enum Paths: CustomStringConvertible {
        
        case productWithId(Int)
        case allProductsWithItemCount(Int)
        
        var description: String {
            switch self {
                case .productWithId(let id):
                    return "getProduct/\(id)"
                case .allProductsWithItemCount(let itemCount):
                    return "_quantity=\(itemCount)"
            }
        }
        
        
    }
    
}
