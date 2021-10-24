//
//  LoginViewFormatter.swift
//  E-Store
//
//  Created by DarkBringer on 24.10.2021.
//

import Foundation

class LoginViewFormatter: LoginViewFormatterProtocol {
    
    func getLoginViewData(loginActionButtonCompletion: @escaping VoidBlock) -> LoginAuthenticationViewData {
        
        return LoginAuthenticationViewData(
            actionButtonData: ActionButtonData(
                text: "Login",
                buttonType: .filled(.sugarLevelColor)),
            signOutButton: ActionButtonData(
                text: "Logout",
                buttonType: .filled(.bright)),
            emailLoginViewData: EmailLoginViewData(
                email: TextFieldViewData(placeholder: "Email"),
                password: TextFieldViewData(placeholder: "Password")))
        
    }
    
    
}
