//
//  ProductResponseModel.swift
//  E-Store
//
//  Created by DarkBringer on 22.10.2021.
//

import Foundation

struct ProductResponseModel: Codable {
    
    let status: String
    let code: Int
    let count: Int
    let data: Products
    
}
