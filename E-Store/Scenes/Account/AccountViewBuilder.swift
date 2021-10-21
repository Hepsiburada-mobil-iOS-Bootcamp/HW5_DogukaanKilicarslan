//
//  AccountViewBuilder.swift
//  E-Store
//
//  Created by DarkBringer on 21.10.2021.
//

import UIKit

// Use Localizables

class AccountViewBuilder {
    
    class func build() -> UIViewController {
        let formatter = AccountViewDataFormatter()
        let viewModel = AccountViewModel(formatter: formatter)
        let viewController = AccountViewController(viewModel: viewModel)
        viewController.title = "Account"
        viewController.tabBarItem.image = SFSymbolsHelper.personOutlined.value
        viewController.tabBarItem.selectedImage = SFSymbolsHelper.personFilled.value
        return viewController
        
    }
    
}
