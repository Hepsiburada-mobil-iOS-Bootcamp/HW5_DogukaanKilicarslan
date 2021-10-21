//
//  CategoryCardData.swift
//  E-Store
//
//  Created by DarkBringer on 21.10.2021.
//

import Foundation
import BaseComponents

class CategoryCardData: GenericDataProtocol {
    
    var type: GenericRowType
    
    private(set) var imageData: CustomImageViewComponentData
    private(set) var categoryLabel: CategoryLabelComponentData
    
    init(imageData: CustomImageViewComponentData,
         categoryLabel: CategoryLabelComponentData,
         type: GenericRowType) {
        self.imageData = imageData
        self.categoryLabel = categoryLabel
        self.type = .frequentlyAskedQuestions
    }
    
}
