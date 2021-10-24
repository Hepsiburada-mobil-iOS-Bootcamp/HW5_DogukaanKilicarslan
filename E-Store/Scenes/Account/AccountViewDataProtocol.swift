//
//  AccountViewDataProtocol.swift
//  E-Store
//
//  Created by DarkBringer on 21.10.2021.
//

import Foundation
import BaseComponents

protocol AccountViewDataProtocol {
    
    func getAccountViewComponentData(by loggedIn: Bool) -> [GenericDataProtocol]

    func getHeaderViewData(with completion: @escaping VoidCompletionBlock) -> HeaderViewData
    
}
