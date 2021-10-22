//
//  Typealiases.swift
//  E-Store
//
//  Created by DarkBringer on 20.10.2021.
//

import Foundation
import DefaultNetworkOperationPackage

typealias VoidCompletionBlock = () -> Void
typealias BooleanBlock = (Bool) -> Void
typealias AccountViewState = (ViewState) -> Void

typealias BaseURL = EndpointManager.BaseURL
typealias Paths = EndpointManager.Paths

typealias Products = [Product]

typealias ProductListResultBlock = (ProductListResult) -> Void
typealias ProductResultBlock = (Result<ProductResponseModel, ErrorResponse>) -> Void
typealias ProductListResult = Result<ProductListResponseModel, ErrorResponse>

enum ViewState {
    
    case loading
    case done
    case failure
    
}
