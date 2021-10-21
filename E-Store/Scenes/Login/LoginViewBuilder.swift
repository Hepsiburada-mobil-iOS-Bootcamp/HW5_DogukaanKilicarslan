//
//  LoginViewBuilder.swift
//  E-Store
//
//  Created by DarkBringer on 21.10.2021.
//

import UIKit

class LoginViewBuilder {
    
    class func build() -> UIViewController {
        return LoginViewController(viewModel: LoginViewModel())
    }
    
}
