//
//  LoginViewBuilder.swift
//  E-Store
//
//  Created by DarkBringer on 21.10.2021.
//

import UIKit

class LoginViewBuilder {
    
    class func build() -> UIViewController {
        
        let authenticationManager = AuthenticationManager.shared
        return LoginViewController(viewModel: LoginViewModel(authenticationManager: authenticationManager))
    }
    
}
