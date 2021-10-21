//
//  CategoryModel.swift
//  E-Store
//
//  Created by DarkBringer on 20.10.2021.
//

import Firebase

// MARK: - Categories
struct ProductsAndCategories {
    
    let ref: DatabaseReference?
    let key: String
    let product: String?
    let shoppingCategories: [String]?
    
    internal init(ref: DatabaseReference?,
                  key: String,
                  product: String?,
                  shoppingCategories: [String]?) {
        
        self.ref = ref
        self.key = key
        self.product = product
        self.shoppingCategories = shoppingCategories
        
    }
    
    init?(snapshot: DataSnapshot) {
        guard
            let value = snapshot.value as? [String: AnyObject],
            let categories = value["categories"] as? [String],
            let product = value["product"] as? String else { return nil }
    
        self.ref = snapshot.ref
        self.key = snapshot.key
        self.product = product
        self.shoppingCategories = categories
    }
    
    func toAnyObject() -> Any {
        return [
            "product" : product,
            "categories" : shoppingCategories
        ]
    }
    
}

