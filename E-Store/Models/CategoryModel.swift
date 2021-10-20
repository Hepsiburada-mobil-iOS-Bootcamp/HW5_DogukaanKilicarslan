//
//  CategoryModel.swift
//  E-Store
//
//  Created by DarkBringer on 20.10.2021.
//

import Foundation

// MARK: - Categories
struct Categories: Codable {
    let products: [Product]?
    let shoppingCategories: [ShoppingCategory]?
    
    enum CodingKeys: String, CodingKey {
        case products
        case shoppingCategories = "shopping_categories"
    }
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.productTask(with: url) { product, response, error in
//     if let product = product {
//       ...
//     }
//   }
//   task.resume()

// MARK: - Product
struct Product: Codable {
    let productDescription, id: String?
    let imageURL: String?
    let images: [String]?
    let name: String?
    let price: Int?
    let categoryImageURL: String?
    let categoryName: CategoryName?
    
    enum CodingKeys: String, CodingKey {
        case productDescription = "description"
        case id
        case imageURL = "image_url"
        case images, name, price
        case categoryImageURL = "category_image_url"
        case categoryName = "category_name"
    }
}

enum CategoryName: String, Codable {
    case suits = "Suits"
}

// MARK: - ShoppingCategory
struct ShoppingCategory: Codable {
    let color, id: String?
    let imageURL: String?
    let name: String?
    let products: [Product]?
    
    enum CodingKeys: String, CodingKey {
        case color, id
        case imageURL = "image_url"
        case name, products
    }
}
