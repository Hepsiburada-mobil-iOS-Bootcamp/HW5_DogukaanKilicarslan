//
//  MainViewModel.swift
//  E-Store
//
//  Created by DarkBringer on 21.10.2021.
//

import Foundation
import DefaultNetworkOperationPackage
import BaseComponents

class MainViewModel {
    
    private var loginStateListener: BooleanBlock?
    private var mainViewState: ((ViewState) -> Void)?
    
    private let authenticationManager: AuthenticationManagerProtocol
    private let accessProviderManager: AccessProviderManagerProtocol
    private var dataFormatter: MainViewDataFormatterProtocol
    
    init(authenticationManager: AuthenticationManagerProtocol,
         accessProviderManager: AccessProviderManagerProtocol,
         dataFormatter: MainViewDataFormatterProtocol) {
        self.authenticationManager = authenticationManager
        self.accessProviderManager = accessProviderManager
        self.dataFormatter = dataFormatter
        listenUserState()
    }
    
    func subscribeLoginState(with completion: @escaping BooleanBlock) {
        loginStateListener = completion
    }
    
    func getData() {
        mainViewState?(.loading)
        do {
            guard let urlRequest = try? CharacterListServiceProvider(request: getCharacterListRequest()).returnUrlRequest() else { return }
            fireApiCall(with: urlRequest, with: dataListener)
        }
    }
    
    func subscribeViewState(with completion: @escaping (ViewState) -> Void) {
        mainViewState = completion
    }
    
    private func listenUserState() {
        authenticationManager.isLoggedIn(with: isLoggedInListener)
    }
    
    private lazy var isLoggedInListener: BooleanBlock = { [weak self] value in
        print("isLoggedIn: \(value)")
        self?.loggedInListenerHandler(with: value)
    }
    
    private func loggedInListenerHandler(with value: Bool) {
        if value {
            getData()
        }
    }
    
    
    private func fireApiCall(with request: URLRequest, with completion: @escaping (Result<CharacterListResponse, ErrorResponse>) -> Void) {
        APIManager.shared.executeRequest(urlRequest: request, completion: completion)
        
    }
    private func getCharacterListRequest() -> CharacterListRequest {
        return CharacterListRequest(offset: dataFormatter.paginationData.offset,
                                    limit: dataFormatter.paginationData.limit,
                                    ts: accessProviderManager.returnUniqueData(),
                                    apikey: accessProviderManager.returnApiKey(),
                                    hash: accessProviderManager.returnHash())
    }
    
    private func apiCallHandler(from response: CharacterListResponse) {
        dataFormatter.setData(with: response)
        mainViewState?(.done)
    }
    
    private lazy var dataListener: (Result<CharacterListResponse, ErrorResponse>) -> Void = { [weak self] result in
        
        self?.dataFormatter.paginationData.fetching = false
        
        switch result {
            case .failure(let error):
                print("Error: \(error)")
            case .success(let response):
                self?.apiCallHandler(from: response)
        }
        
    }
}

extension MainViewModel: ItemProviderProtocol {
    
    func askNumberOfSection() -> Int {
        return 0
    }
    
    func askNumberOfItem(in section: Int) -> Int {
        return dataFormatter.getNumbeOfItem(in: section)
    }
    
    func askData(at index: Int) -> GenericDataProtocol? {
        return dataFormatter.getItem(at: index)
    }
    
    func isLoadingCell(for index: Int) -> Bool {
        return index >= dataFormatter.getCount()
    }
    
    func getMoreData() {
        // check to get more data
        guard dataFormatter.paginationData.checkLoadingMore() else { return }
        dataFormatter.paginationData.nextOffset()
        getData()
    }
    
}
