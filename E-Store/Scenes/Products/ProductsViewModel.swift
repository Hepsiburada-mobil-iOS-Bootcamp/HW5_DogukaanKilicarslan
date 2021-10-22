//
//  ProductsViewModel.swift
//  E-Store
//
//  Created by DarkBringer on 22.10.2021.
//

import UIKit
import RxSwift
import BaseComponents

class ProductsViewModel {
    
    deinit {
        print("DEINIT ProductsViewModel")
    }
    
    private let disposeBag = DisposeBag()
    private let dataGetter: ProductViewDataGetterProtocol
    private let opManager: ProductListOperationsManagerProtocol
    private var data: ProductListResponseModel?
    private var state: ProductListStateBlock?
    
    init(dataGetter: ProductViewDataGetterProtocol,
         opManager: ProductListOperationsManagerProtocol) {
        self.dataGetter = dataGetter
        self.opManager = opManager
        
    }
    
    func subscribeState(completion: @escaping ProductListStateBlock) {
        state = completion
    }
    
    func getProductList() {
        state?(.loading)
        opManager.getProductListData { [weak self] result in
            switch result {
                case .failure(let error):
                    print("ERROR IN THE CHARACTERS VM 'subscribeOperationManagerPublisher' \(error)")
                case .success(let response):
                    self?.dataGetter.setData(with: response)
                    self?.dataHandler(with: response)
            }
        }
    }
    
    private func dataHandler(with response: ProductListResponseModel) {
        data = response
        state?(.done)
        print("data == \(data)")
    }
    
//    private func subscribeOperationManagerPublisher() {
//        opManager.subscribeDataPublisher { [weak self] result in
//            switch result {
//                case .failure(let error):
//                    print("ERROR IN THE CHARACTERS VM 'subscribeOperationManagerPublisher' \(error)")
//                case .success(let response):
//                    self?.dataGetter.setData(with: response)
//                    self?.dataHandler(with: response)
//            }
//        }.disposed(by: disposeBag)
//    }
}

extension ProductsViewModel: ProductCollectionViewProtocol {
    
    func getNumberOfSection() -> Int {
        return dataGetter.getNumberOfSection()
    }
    
    func getItemCount(in section: Int) -> Int {
        return dataGetter.getNumberOfItem(in: section)
    }
    
    func getData(at index: Int) -> GenericDataProtocol? {
        return dataGetter.getItem(from: dataGetter.getData(at: index))
    }
    
    
}
