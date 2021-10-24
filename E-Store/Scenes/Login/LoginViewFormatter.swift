//
//  LoginViewFormatter.swift
//  E-Store
//
//  Created by DarkBringer on 24.10.2021.
//

import Foundation

class LoginViewFormatter: LoginViewFormatterProtocol {
    
    func getLoginViewData(
        loginActionButtonCompletion: @escaping VoidCompletionBlock,
        emailChangeCompletion: @escaping SugarTextChangeBlock,
        passwordChangeCompletion: @escaping SugarTextChangeBlock) -> LoginAuthenticationViewData {
        let actionButton = ActionButtonData(text: "Login", buttonType: .filled(.sugarLevelColor))
            .setActionButtonListener(by: loginActionButtonCompletion)
        
        let emailLoginViewData = EmailLoginViewData(
            email: TextFieldViewData(placeholder: "Email", isSecureTextEntry: false).setSugarTextChangeListener(by: emailChangeCompletion),
            password: TextFieldViewData(placeholder: "Password", isSecureTextEntry: true).setSugarTextChangeListener(by: passwordChangeCompletion))
        
        return LoginAuthenticationViewData(actionButtonData: actionButton, emailLoginViewData: emailLoginViewData)
    }
    
}
