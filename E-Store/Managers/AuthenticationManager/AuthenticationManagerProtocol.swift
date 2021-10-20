//
//  AuthenticationManagerProtocol.swift
//  E-Store
//
//  Created by DarkBringer on 20.10.2021.
//

import Foundation

protocol AuthenticationManagerProtocol {
    
    func isLoggedIn(with completion: @escaping BooleanBlock)
    
}
