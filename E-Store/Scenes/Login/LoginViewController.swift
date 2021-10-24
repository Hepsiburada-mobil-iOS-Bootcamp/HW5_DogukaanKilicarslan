//
//  LoginViewController.swift
//  E-Store
//
//  Created by DarkBringer on 21.10.2021.
//

import UIKit
import BaseComponents

class LoginViewController: BaseViewController<LoginViewModel> {
    
    private var authenticationView: LoginAuthenticationView!
    
    override func prepareViewControllerConfigurations() {
        super.prepareViewControllerConfigurations()
        subscribeViewModelListeners()
        addAuthView()
    }
    
    private func addAuthView() {
        
        authenticationView = LoginAuthenticationView(data: viewModel.getLoginViewData())
        authenticationView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(authenticationView)
        
        NSLayoutConstraint.activate([
            
            authenticationView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            authenticationView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            authenticationView.topAnchor.constraint(equalTo: view.topAnchor),
            
        ])
        
    }
    
    private func subscribeViewModelListeners() {
        viewModel.listenLoginAction { [weak self] value in
            if value {
                self?.dismiss(animated: true, completion: nil)
            }
        }
    }
    
    
}
