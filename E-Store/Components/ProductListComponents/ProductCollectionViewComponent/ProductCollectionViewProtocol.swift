//
//  ProductCollectionViewProtocol.swift
//  E-Store
//
//  Created by DarkBringer on 22.10.2021.
//

import Foundation
import BaseComponents

protocol ProductCollectionViewProtocol {
    func getNumberOfSection() -> Int
    func getItemCount(in section: Int) -> Int
    func getData(at index: Int) -> GenericDataProtocol?
}
