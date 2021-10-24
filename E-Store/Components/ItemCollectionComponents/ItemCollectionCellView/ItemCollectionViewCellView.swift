//
//  ItemCollectionViewCellView.swift
//  E-Store
//
//  Created by DarkBringer on 24.10.2021.
//

import Foundation
import UIKit
import BaseComponents

class ItemCollectionCellView: BaseCollectionViewCell {
    
    private lazy var contentDisplayer: ContentDisplayerView = {
        let temp = ContentDisplayerView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        return temp
    }()
    
    override func addMajorViews() {
        super.addMajorViews()
        addContentDisplayer()
    }
    
    private func addContentDisplayer() {
        contentView.addSubview(contentDisplayer)
        
        NSLayoutConstraint.activate([
            
            contentDisplayer.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            contentDisplayer.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            contentDisplayer.topAnchor.constraint(equalTo: contentView.topAnchor),
            contentDisplayer.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            
        ])
        
    }
    
    func setData(by value: GenericDataProtocol) {
        contentDisplayer.setData(by: value)
    }
}
