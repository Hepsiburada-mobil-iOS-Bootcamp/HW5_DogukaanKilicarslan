//
//  ProductsViewBuilder.swift
//  E-Store
//
//  Created by DarkBringer on 22.10.2021.
//

import UIKit

class ProductsViewBuilder {
    
    class func build() -> UIViewController {
        let dataGetter = ProductsViewDataGetter()
        let manager = ProductListOperationsManager.shared
        let viewModel = ProductsViewModel(dataGetter: dataGetter, opManager: manager)
        let viewController = ProductsViewController(viewModel: viewModel)
        return viewController
    }
}
