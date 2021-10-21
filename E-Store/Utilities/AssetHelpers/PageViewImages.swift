//
//  PageViewImages.swift
//  E-Store
//
//  Created by DarkBringer on 21.10.2021.
//

import UIKit
import BaseComponents

enum PageViewImages: String, GenericValueProtocol {

    typealias Value = UIImage
    
    var value: UIImage {
        return UIImage(imageLiteralResourceName: rawValue)
    }
    
    case defaultSplashBackground = "defaultSplashBackground"
    case page1 = "page1"
    case page2 = "page2"
    case page3 = "page3"
    
}
