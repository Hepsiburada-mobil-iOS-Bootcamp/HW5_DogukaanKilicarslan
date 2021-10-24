//
//  LoginViewModel.swift
//  E-Store
//
//  Created by DarkBringer on 21.10.2021.
//

import Foundation

class LoginViewModel {
    
    private var loginViewBlock: BooleanBlock?
    
    private var authenticationManager: AuthenticationManagerProtocol
    private var email = ""
    private var password = ""
    
    init(authenticationManager: AuthenticationManagerProtocol) {
        self.authenticationManager = authenticationManager
    }
    
    func getLoginViewData() -> LoginAuthenticationViewData {
        
        return LoginAuthenticationViewData(
            actionButtonData: ActionButtonData(
                text: "Login",
                buttonType: .filled(.sugarLevelColor)).setActionButtonListener(by: loginActionButtonListener),
            signOutButton: ActionButtonData(
                text: "Logout",
                buttonType: .filled(.bright)).setActionButtonListener(by: signOutActionButtonListener),
            emailLoginViewData: EmailLoginViewData(
                email: TextFieldViewData(placeholder: "Email"),
                password: TextFieldViewData(placeholder: "Password")))
        
    }
    
    func listenLoginAction(with completion: @escaping BooleanBlock) {
        loginViewBlock = completion
    }
    
    private func fireSignIn() {
        authenticationManager.signIn(with: SimpleAuthenticationRequest(email: email, password: password))
        loginViewBlock?(true)
    }
    private func fireSignOut() {
        authenticationManager.logout()
    }
    
    private lazy var loginActionButtonListener: VoidBlock = { [weak self] in
        print("login button tapped")
        self?.fireSignIn()
    }
    
    private lazy var signOutActionButtonListener: VoidBlock = { [weak self] in
        print("logout button tapped")
        self?.fireSignOut()
    }
    
}
