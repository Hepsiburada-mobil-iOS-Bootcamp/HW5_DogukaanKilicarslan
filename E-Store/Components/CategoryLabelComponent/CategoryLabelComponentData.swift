//
//  CategoryLabelComponentData.swift
//  E-Store
//
//  Created by DarkBringer on 21.10.2021.
//

import Foundation

class CategoryLabelComponentData {
    
    private(set) var title: String
    private(set) var titleLabelDistributionData: LabelDistributionData = LabelDistributionData()
    
    init(title: String = "") {
        self.title = title
    }
    
    func setTitleLabelDistributionData(by value: LabelDistributionData) -> Self {
        titleLabelDistributionData = value
        return self
    }
    
}
