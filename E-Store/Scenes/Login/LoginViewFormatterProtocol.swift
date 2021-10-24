//
//  LoginViewFormatterProtocol.swift
//  E-Store
//
//  Created by DarkBringer on 24.10.2021.
//

import Foundation

protocol LoginViewFormatterProtocol {
    
    func getLoginViewData(loginActionButtonCompletion: @escaping VoidBlock) -> LoginAuthenticationViewData 
    
}
