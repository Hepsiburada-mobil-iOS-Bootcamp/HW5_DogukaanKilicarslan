//
//  ProductListResponseModel.swift
//  E-Store
//
//  Created by DarkBringer on 22.10.2021.
//

import Foundation

struct ProductListResponseModel: Codable {
    
    let status: String
    let code: Int
    let total: Int
    let data: Products
    
}
