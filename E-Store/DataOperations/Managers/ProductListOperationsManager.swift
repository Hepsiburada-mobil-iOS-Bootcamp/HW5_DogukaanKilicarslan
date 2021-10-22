//
//  ProductListOperationsManager.swift
//  E-Store
//
//  Created by DarkBringer on 22.10.2021.
//

import Foundation
import RxSwift
import DefaultNetworkOperationPackage

class ProductListOperationsManager: ProductListOperationsManagerProtocol {
    
    public static let shared = ProductListOperationsManager()
    
    private init() { }
    
    private let dataPublishSubject = PublishSubject<ProductListResult>()
    
    func getProductListData() {
        let productListRequest = ProductListRequestModel()
        
    }
    
    func subscribeDataPublisher(with completion: @escaping ProductListResultBlock) -> Disposable {
        return dataPublishSubject.subscribe(onNext: completion)
    }
    
    private func fireApiCall(request: ProductListRequestModel, with completion: @escaping ProductListResultBlock) {
        do {
            let urlRequest = try ProductListRequestServiceProvider(request: request).returnUrlRequest()
            APIManager.shared.executeRequest(urlRequest: urlRequest, completion: completion)
            
        } catch let error {
            print("ERROR IN OPERATIONS MANAGER 'fireApiCall' : \(error)")
        }
    }
    
    private lazy var apiCallHandler: ProductListResultBlock = { [weak self] result in
        self?.dataPublishSubject.onNext(result)
    }
}
