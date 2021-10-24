//
//  ItemDetailViewController.swift
//  E-Store
//
//  Created by DarkBringer on 24.10.2021.
//

import UIKit
import BaseComponents

class ItemDetailViewController: BaseViewController<ItemDetailViewModel> {
    
    private var mainComponent: ItemDetailView!
    
    override func prepareViewControllerConfigurations() {
        super.prepareViewControllerConfigurations()
        view.backgroundColor = ActionButtonTheme.bright.value
        addMainComponent()
        viewModelListeners()
        viewModel.getData()
        addNavigationView()
    }
    
    private func addMainComponent() {
        mainComponent = ItemDetailView()
        mainComponent.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(mainComponent)
        
        NSLayoutConstraint.activate([
            
            mainComponent.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            mainComponent.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            
        ])
    }
    
    func addNavigationView() {
        
        let navBar = navigationController
        navBar?.isNavigationBarHidden = false
    }

    private func viewModelListeners() {
        viewModel.subscribeViewState { [weak self] data in
            self?.mainComponent.setData(by: data)
        }
    }
}
