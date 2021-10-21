//
//  Typealiases.swift
//  E-Store
//
//  Created by DarkBringer on 20.10.2021.
//

import Foundation

typealias VoidCompletionBlock = () -> Void
typealias BooleanBlock = (Bool) -> Void
typealias AccountViewState = (ViewState) -> Void

enum ViewState {
    
    case loading
    case done
    case failure
    
}
