//
//  MainViewBuilder.swift
//  E-Store
//
//  Created by DarkBringer on 21.10.2021.
//

import UIKit

class MainViewBuilder {
    
    class func build() -> UIViewController {
        
        let formatter = MainViewDataFormatter()
        let viewModel = MainViewModel(authenticationManager: AuthenticationManager.shared,
                                      accessProviderManager: AccessProviderManager.shared,
                                      dataFormatter: formatter)
        let viewController = MainViewController(viewModel: viewModel)
        let navigationViewController = UINavigationController(rootViewController: viewController)
        
        viewController.title = "Characters"
        viewController.tabBarItem.image = TabBarImages.home.value
        viewController.tabBarItem.selectedImage = TabBarImages.homeSelected.value
        viewController.navigationController?.setNavigationBarHidden(true, animated: false)
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .systemBackground
        viewController.navigationController?.navigationBar.standardAppearance = appearance;
        viewController.navigationController?.navigationBar.scrollEdgeAppearance = viewController.navigationController?.navigationBar.standardAppearance
        
        return navigationViewController
        
    }
    
}
