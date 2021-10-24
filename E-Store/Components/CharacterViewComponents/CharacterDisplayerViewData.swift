//
//  CharacterDisplayerViewData.swift
//  E-Store
//
//  Created by DarkBringer on 24.10.2021.
//

import Foundation
import BaseComponents

class ContentDisplayerViewData: GenericDataProtocol {
    
    var type: GenericRowType? = nil
    
    private(set) var imageData: CustomImageViewComponentData
    private(set) var name: String
    private(set) var isInfoViewHidden: Bool = false
    
    init(imageData: CustomImageViewComponentData,
         name: String,
         isInfoViewHidden: Bool = false) {
        self.imageData = imageData
        self.name = name
        self.isInfoViewHidden = isInfoViewHidden
    }
    
}
