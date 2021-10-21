//
//  MainViewModel.swift
//  E-Store
//
//  Created by DarkBringer on 21.10.2021.
//

import Foundation

class MainViewModel {
    
    private var loginStateListener: BooleanBlock?
    
    
    init() {
        listenUserState()
    }
    
    private func listenUserState() {
        authenticationManager.isLoggedIn { [weak self] state in
            print("USER STATE : \(state)")
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                self?.loginStateListener?(state)
            }
        }
    }
    
    func subscribeLoginState(with completion: @escaping BooleanBlock) {
        loginStateListener = completion
    }
    
}
