//
//  AccountViewDataProtocol.swift
//  WeatherApplication
//
//  Created by Erkut Bas on 17.10.2021.
//

import Foundation
import BaseComponents

protocol AccountViewDataProtocol {
    
    func getAccountViewComponentData() -> [GenericDataProtocol]
    
    func getHeaderViewData(with completion: @escaping VoidCompletionBlock) -> HeaderViewData
    
}
