//
//  SFSymbolsHelper.swift
//  E-Store
//
//  Created by DarkBringer on 21.10.2021.
//

import UIKit
import BaseComponents

enum SFSymbolsHelper: String, GenericValueProtocol {

    typealias Value = UIImage?
    
    var value: UIImage? {
        return UIImage(systemName: rawValue)
    }
    
    case personOutlined = "person.circle"
    case personFilled = "person.circle.fill"
    case gearshape = "gearshape"
    case questionmark = "questionmark.circle"
    
}
