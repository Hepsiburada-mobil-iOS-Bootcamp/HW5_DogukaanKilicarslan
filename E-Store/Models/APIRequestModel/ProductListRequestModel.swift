//
//  CategoryRequestModel.swift
//  E-Store
//
//  Created by DarkBringer on 22.10.2021.
//

import Foundation

struct ProductListRequestModel: Codable {
    
    private(set) var itemCount: Int = 20
    
    internal init(itemCount: Int = 20) {
        self.itemCount = itemCount
    }
    
}
