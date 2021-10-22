//
//  ProductViewDataGetterProtocol.swift
//  E-Store
//
//  Created by DarkBringer on 22.10.2021.
//

import Foundation
import BaseComponents

protocol ProductViewDataGetterProtocol {
    
    func getItem(from data: Product) -> GenericDataProtocol
    
    func getNumberOfSection() -> Int
    
    func getNumberOfItem(in section: Int) -> Int
    
    func getCount() -> Int
    
    func getData(at index: Int) -> Product
    
    func setData(with response: ProductListResponseModel)
    
    func setData(with list: Products)
    
}
