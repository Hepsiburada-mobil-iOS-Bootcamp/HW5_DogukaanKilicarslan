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
    
    private var state: AccountViewState?
    private var loginActionBlock: VoidCompletionBlock?
    private var data = [GenericDataProtocol]()
    
    init(formatter: AccountViewDataProtocol) {
        self.formatter = formatter
    }
    
    func getViewComponentData() {
        state?(.loading)
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [weak self] in
            guard let self = self else { return }
            self.data = self.formatter.getAccountViewComponentData()
            self.state?(.done)
        }
        
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
    
    private lazy var loginActionButtonListener: VoidCompletionBlock = { [weak self] in
        print("button tapped")
        self?.loginActionBlock?()
    }
    
}

extension AccountViewModel: ItemListProtocol {
    
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
