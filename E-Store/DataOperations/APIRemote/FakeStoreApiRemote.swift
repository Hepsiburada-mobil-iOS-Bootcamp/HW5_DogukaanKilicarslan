//
//  FakeStoreApiRemote.swift
//  E-Store
//
//  Created by DarkBringer on 22.10.2021.
//

import UIKit
import DefaultNetworkOperationPackage

class FakeStoreApiRemote: FakeStoreApiRemoteProtocol {
    
    func getProductList(with completion: @escaping ProductListResultBlock) {
        do {
            let productListRequest = ProductListRequestModel()
            let urlRequest = try ProductListRequestServiceProvider(request: productListRequest).returnUrlRequest()
            APIManager.shared.executeRequest(urlRequest: urlRequest, completion: completion)
        } catch let error {
            print("ERROR IN APIREMOTE 'getProductList' : \(error)")
        }
    }
    
    func getProductById(id: Int, with completion: @escaping ProductListResultBlock) {
        do {
            let productListRequest = ProductRequestModel(productId: id)
            let urlRequest = try ProductRequestServiceProvider(request: productListRequest).returnUrlRequest()
            APIManager.shared.executeRequest(urlRequest: urlRequest, completion: completion)
        } catch let error {
            print("ERROR IN APIREMOTE 'getProductById' : \(error)")
        }
    }
}
