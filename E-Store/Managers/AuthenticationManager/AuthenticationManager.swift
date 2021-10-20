//
//  AuthenticationManager.swift
//  E-Store
//
//  Created by DarkBringer on 20.10.2021.
//

import Foundation
import Firebase

class AuthenticationManager: AuthenticationManagerProtocol {
    
    public static let shared = AuthenticationManager()
    
    private init() { }
    
    func isLoggedIn(with completion: @escaping BooleanBlock) {
        Auth.auth().addStateDidChangeListener { auth, user in
            completion((user != nil) ? true : false)
        }
    }
    
    func signIn(with request: SimpleAuthenticationRequest) {
        
    }
    
    func logout() {
        
    }
    
    func register() {
        
    }
    
}
