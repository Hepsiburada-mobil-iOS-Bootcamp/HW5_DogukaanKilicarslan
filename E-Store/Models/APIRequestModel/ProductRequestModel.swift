//
//  ProductRequestModel.swift
//  E-Store
//
//  Created by DarkBringer on 22.10.2021.
//

import Foundation

struct ProductRequestModel: Codable {
    
    private(set) var productId: Int = 1
    
    init(productId: Int = 1) {
        self.productId = productId
    }
    
}
