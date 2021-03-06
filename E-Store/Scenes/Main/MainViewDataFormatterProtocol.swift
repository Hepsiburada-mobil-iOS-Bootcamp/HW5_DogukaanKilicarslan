//
//  MainViewDataFormatterProtocol.swift
//  E-Store
//
//  Created by DarkBringer on 24.10.2021.
//

import Foundation
import BaseComponents

protocol MainViewDataFormatterProtocol {
    
    var paginationData: PaginationInfo { get set }
    
    func getNumberOfSection() -> Int
    
    func getNumbeOfItem(in section: Int) -> Int
    
    func getCount() -> Int
    
    func setData(with response: CharacterDataResponse)
    
    func getItem(at index: Int) -> GenericDataProtocol?
    
    func getItemId(at index: Int) -> Int
}
