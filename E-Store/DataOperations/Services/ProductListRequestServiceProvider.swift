//
//  ProductListRequestServiceProvider.swift
//  E-Store
//
//  Created by DarkBringer on 22.10.2021.
//

import Foundation
import DefaultNetworkOperationPackage

class ProductListRequestServiceProvider: ApiServiceProvider<ProductListRequestModel> {
    
    init(request: ProductListRequestModel) {
        super.init(method: .get,
                   baseUrl: BaseURL.main.description,
                   path: Paths.allProducts.description,
                   data: nil)
    }
    
}
