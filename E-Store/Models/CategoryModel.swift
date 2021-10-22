//
//  CategoryModel.swift
//  E-Store
//
//  Created by DarkBringer on 20.10.2021.
//

import Foundation

// MARK: - Category
struct Product: Codable {
    let id: Int?
    let title: String?
    let price: Double?
    let categoryDescription: String?
    let category: CategoryEnum?
    let image: String?
    let rating: Rating?
    
    enum CodingKeys: String, CodingKey {
        case id, title, price
        case categoryDescription = "description"
        case category, image, rating
    }
}

enum CategoryEnum: String, Codable {
    case electronics = "electronics"
    case jewelery = "jewelery"
    case menSClothing = "men's clothing"
    case womenSClothing = "women's clothing"
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.ratingTask(with: url) { rating, response, error in
//     if let rating = rating {
//       ...
//     }
//   }
//   task.resume()

// MARK: - Rating
struct Rating: Codable {
    let rate: Double?
    let count: Int?
}

// MARK: - Helper functions for creating encoders and decoders

//func newJSONDecoder() -> JSONDecoder {
//    let decoder = JSONDecoder()
//    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
//        decoder.dateDecodingStrategy = .iso8601
//    }
//    return decoder
//}
//
//func newJSONEncoder() -> JSONEncoder {
//    let encoder = JSONEncoder()
//    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
//        encoder.dateEncodingStrategy = .iso8601
//    }
//    return encoder
//}

// MARK: - URLSession response handlers

//extension URLSession {
//    fileprivate func codableTask<T: Codable>(with url: URL, completionHandler: @escaping (T?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
//        return self.dataTask(with: url) { data, response, error in
//            guard let data = data, error == nil else {
//                completionHandler(nil, response, error)
//                return
//            }
//            completionHandler(try? newJSONDecoder().decode(T.self, from: data), response, nil)
//        }
//    }
//
//    func categoriesTask(with url: URL, completionHandler: @escaping (Categories?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
//        return self.codableTask(with: url, completionHandler: completionHandler)
//    }
//}
