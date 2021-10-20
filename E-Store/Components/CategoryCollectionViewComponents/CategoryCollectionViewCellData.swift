//
//  CategoryCollectionViewCellData.swift
//  E-Store
//
//  Created by DarkBringer on 20.10.2021.
//

import UIKit
import BaseComponents

class CategoryCollectionViewCellData: GenericDataProtocol {
    
    var type: GenericRowType {
        return cellAction
    }
    
    private(set) var cellInfo: LabelPackComponentData
    private(set) var iconImage: UIImage
    private let cellAction: GenericRowType
    
    init(cellInfo: LabelPackComponentData,
         iconImage: UIImage,
         cellAction: GenericRowType) {
        self.cellInfo = cellInfo
        self.iconImage = iconImage
        self.cellAction = cellAction
    }
    
}
