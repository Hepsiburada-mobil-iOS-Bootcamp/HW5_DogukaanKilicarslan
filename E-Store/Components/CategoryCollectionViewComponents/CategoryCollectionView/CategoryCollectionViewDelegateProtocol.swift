//
//  CategoryCollectionViewDelegateProtocol.swift
//  E-Store
//
//  Created by DarkBringer on 20.10.2021.
//

import Foundation
import BaseComponents

protocol CategoryCollectionViewDelegateProtocol: AnyObject {
    
    func getNumberOfSection() -> Int
    
    func getItemCount(in section: Int) -> Int
    
    func getData(at index: Int) -> GenericDataProtocol?
}
