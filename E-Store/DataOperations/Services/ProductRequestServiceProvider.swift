//
//  ProductProductRequestServiceProvider.swift
//  E-Store
//
//  Created by DarkBringer on 22.10.2021.
//

import Foundation
import DefaultNetworkOperationPackage

class ProductRequestServiceProvider: ApiServiceProvider<ProductRequestModel> {
    
    init(request: ProductRequestModel) {
        super.init(method: .get,
                   baseUrl: BaseURL.main.description,
                   path: Paths.productWithId(request.productId).description,
                   data: nil)
    }
    
}
