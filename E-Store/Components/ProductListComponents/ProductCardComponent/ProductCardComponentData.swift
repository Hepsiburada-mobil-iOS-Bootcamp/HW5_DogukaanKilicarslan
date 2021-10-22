//
//  ProductCardComponentData.swift
//  E-Store
//
//  Created by DarkBringer on 22.10.2021.
//

import Foundation
import BaseComponents

class ProductCardComponentData: GenericDataProtocol {
    
    var type: GenericRowType?
    
    private(set) var imageData: CustomImageViewComponentData
    private(set) var productLabelPackData: ProductCardLabelPackComponentData
    
    init(imageData: CustomImageViewComponentData,
         productLabelPackData: ProductCardLabelPackComponentData) {
        self.imageData = imageData
        self.productLabelPackData = productLabelPackData
    }
    
}



