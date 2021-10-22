//
//  ProductViewState.swift
//  E-Store
//
//  Created by DarkBringer on 22.10.2021.
//

import Foundation

typealias ProductListStateBlock = (ProductListViewState) -> Void

enum ProductListViewState {
    
    case loading
    case done
    case failure
    
}
