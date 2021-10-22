//
//  FakeStoreApiRemoteProtocol.swift
//  E-Store
//
//  Created by DarkBringer on 22.10.2021.
//

import Foundation

protocol FakeStoreApiRemoteProtocol {
    func getProductById(id: Int, with completion: @escaping ProductListResultBlock)
    func getProductList(with completion: @escaping ProductListResultBlock)

}
