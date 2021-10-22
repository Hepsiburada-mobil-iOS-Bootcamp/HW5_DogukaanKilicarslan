//
//  ProductViewDataGetter.swift
//  E-Store
//
//  Created by DarkBringer on 22.10.2021.
//

import Foundation
import BaseComponents

class ProductsViewDataGetter: ProductViewDataGetterProtocol {
    
    private var data: ProductListResponseModel!
    private var list: Products = [Product]()
    
    func getItem(from data: Product) -> GenericDataProtocol {
        return ProductCardComponentData(imageData: CustomImageViewComponentData(imageUrl: data.image ?? "").setContentMode(by: .scaleAspectFit),
                                        productLabelPackData: ProductCardLabelPackComponentData(
                                            productName: LabelPackComponentData(
                                                title: data.name ?? "noname",
                                                subTitle: data.description?.description ?? "nodesc").setStackViewAlignment(by: .center)))
    }
    
    func getNumberOfSection() -> Int {
        return 1
    }
    
    func getNumberOfItem(in section: Int) -> Int {
        return list.count - 1
    }
    
    func getCount() -> Int {
        return list.count
    }
    
    func getData(at index: Int) -> Product {
        return list[index]
    }
    
    func setData(with response: ProductListResponseModel) {
        self.data = response
        self.list.append(contentsOf: response.data)
    }
    
    func setData(with list: Products) {
        self.list = list
    }
    
}
