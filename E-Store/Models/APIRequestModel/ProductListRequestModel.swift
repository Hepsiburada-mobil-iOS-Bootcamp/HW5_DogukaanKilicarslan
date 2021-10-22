//
//  CategoryRequestModel.swift
//  E-Store
//
//  Created by DarkBringer on 22.10.2021.
//

import Foundation

struct ProductListRequestModel: Codable {
    
    private(set) var quantity: Int = 20
    
    internal init(quantity: Int = 20) {
        self.quantity = quantity
    }
    
    enum CodingKeys: String, CodingKey {
        case quantity = "_quantity"
        
    }
}
