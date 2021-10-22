//
//  CategoryModel.swift
//  E-Store
//
//  Created by DarkBringer on 20.10.2021.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let categories = try? newJSONDecoder().decode(Categories.self, from: jsonData)

import Foundation

// MARK: - Categories
class Categories: Codable {
    let status: String?
    let code, total: Int?
    let data: [Product]?
    
    init(status: String?, code: Int?, total: Int?, data: [Product]?) {
        self.status = status
        self.code = code
        self.total = total
        self.data = data
    }

}

// MARK: - Datum
class Product: Codable {
    let name: String?
    let description: String?
    let ean: String?
    let upc: String?
    let image: String?
    let images: [Image]?
    let netPrice: Double?
    let taxes: Int?
    let price: String?
    let categories: [Int]?
    let tags: [String]?
    
    enum CodingKeys: String, CodingKey {
        case name
        case description = "description"
        case ean, upc, image, images
        case netPrice = "net_price"
        case taxes, price, categories, tags
    }
    
    init(name: String?,
         description: String?,
         ean: String?,
         upc: String?,
         image: String?,
         images: [Image]?,
         netPrice: Double?,
         taxes: Int?,
         price: String?,
         categories: [Int]?,
         tags: [String]?) {
        self.name = name
        self.description = description
        self.ean = ean
        self.upc = upc
        self.image = image
        self.images = images
        self.netPrice = netPrice
        self.taxes = taxes
        self.price = price
        self.categories = categories
        self.tags = tags
    }
}

// MARK: - Image
class Image: Codable {
    let title, imageDescription: String?
    let url: String?
    
    enum CodingKeys: String, CodingKey {
        case title
        case imageDescription = "description"
        case url
    }
    
    init(title: String?,
         imageDescription: String?,
         url: String?) {
        self.title = title
        self.imageDescription = imageDescription
        self.url = url
    }
}
