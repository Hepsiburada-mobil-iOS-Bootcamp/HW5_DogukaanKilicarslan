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
                    return "https://fakestoreapi.com/products"
            }
        }
    }
    
    enum Paths: CustomStringConvertible {
        
        case productWithId(Int)
        case allProducts
        case limitedProductList(Int)
        
        var description: String {
            switch self {
                case .productWithId(let id):
                    return "/\(id)"
                case .allProducts:
                    return ""
                case .limitedProductList(let limit):
                    return "limit=\(limit)"
            }
        }
        
        
    }
    
}
