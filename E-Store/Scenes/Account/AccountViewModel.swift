//
//  AccountViewModel.swift
//  E-Store
//
//  Created by DarkBringer on 21.10.2021.
//

import Foundation
import BaseComponents

class AccountViewModel {
    
    private let formatter: AccountViewDataProtocol
    private let authenticationManager: AuthenticationManagerProtocol
    
    private var state: AccountViewState?
    private var loginActionBlock: VoidCompletionBlock?
    private var data = [GenericDataProtocol]()
    
    init(formatter: AccountViewDataProtocol,
         authenticationManager: AuthenticationManagerProtocol) {
        self.formatter = formatter
        self.authenticationManager = authenticationManager
        subscribeAuthenticationManager()
    }
    
    func subscribeViewState(with completion: @escaping AccountViewState) {
        state = completion
    }
    
    func subscribeLoginAction(with completion: @escaping VoidCompletionBlock) {
        loginActionBlock = completion
    }
    
    func getItemListViewData() -> ItemListViewData {
        return ItemListViewData(headerViewData: formatter.getHeaderViewData(with: loginActionButtonListener))
    }
    
    private func subscribeAuthenticationManager() {
        authenticationManager.isLoggedIn(with: isLoggedInListener)
    }
    
    private func loggedInListenerHandler(with value: Bool) {
        state?(.loading)
        data = formatter.getAccountViewComponentData(by: value)
        state?(.done)
    }
        
    private func selectedItemHandler(at index: Int) {
        switch data[index].type {
            case .logout:
                authenticationManager.logout()
            default:
                break
        }
    }

    private lazy var loginActionButtonListener: VoidCompletionBlock = { [weak self] in
        print("button tapped")
        self?.loginActionBlock?()
    }
    private lazy var isLoggedInListener: BooleanBlock = { [weak self] value in
        print("test : \(value)")
        self?.loggedInListenerHandler(with: value)
    }
}

extension AccountViewModel: ItemProviderProtocol {
    
    func askData(at index: Int) -> GenericDataProtocol? {
        return data[index]
    }
    
    func askNumberOfItem(in section: Int) -> Int {
        return data.count
    }
    
    func askNumberOfSection() -> Int {
        return 1
    }
    
}
