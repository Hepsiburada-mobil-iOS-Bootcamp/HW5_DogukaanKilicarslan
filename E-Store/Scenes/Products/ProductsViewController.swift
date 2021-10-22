//
//  ProductsViewController.swift
//  E-Store
//
//  Created by DarkBringer on 22.10.2021.
//

import UIKit
import BaseComponents

class ProductsViewController: BaseViewController<ProductsViewModel> {
    
    deinit {
        print("DEINIT ProductsViewController")
    }
    
    private var mainComponent: ProductCollectionView!
    
    override func prepareViewControllerConfigurations() {
        super.prepareViewControllerConfigurations()
        addMainComponent()
        viewModel.getProductList()
    }
    func addMainComponent() {
        mainComponent = ProductCollectionView()
        mainComponent.translatesAutoresizingMaskIntoConstraints = false
        
        mainComponent.setupDelegation(with: viewModel)
        
        view.addSubview(mainComponent)
        
        NSLayoutConstraint.activate([
            mainComponent.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mainComponent.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mainComponent.topAnchor.constraint(equalTo: view.topAnchor),
            mainComponent.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
//        setupNavController()
    }
    
    
    
    private func subscribeViewModelListeners() {
        
    }
    
    
    private func setupNavController() {
        
        let navCont = self.navigationController
        
        navCont?.setNavigationBarHidden(false, animated: true)
        navCont?.navigationBar.barStyle = .black
        navCont?.navigationBar.isTranslucent = false
        
        let image = UIImage(named: "starwars")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        self.navigationItem.titleView = imageView
        
    }

}
