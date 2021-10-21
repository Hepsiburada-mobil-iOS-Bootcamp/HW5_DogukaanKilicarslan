//
//  String+Extension.swift
//  E-Store
//
//  Created by DarkBringer on 21.10.2021.
//

import Foundation

extension String {
    
    func toLocalize() -> String {
        return NSLocalizedString(self, comment: "")
    }
    
}
