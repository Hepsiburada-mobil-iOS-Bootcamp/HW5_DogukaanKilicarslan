//
//  TextFieldViewData.swift
//  E-Store
//
//  Created by DarkBringer on 24.10.2021.
//

import Foundation

typealias SugarTextChangeBlock = (String?) -> Void

class TextFieldViewData {
    
    private(set) var placeholder: String
    private(set) var isSecureTextEntry: Bool
    private(set) var sugarTextChangeListener: SugarTextChangeBlock?
    
    init(placeholder: String,
         isSecureTextEntry: Bool) {
        self.placeholder = placeholder
        self.isSecureTextEntry = isSecureTextEntry
    }
    
    func setSugarTextChangeListener(by value: @escaping SugarTextChangeBlock) -> Self {
        sugarTextChangeListener = value
        return self
    }
    
}
