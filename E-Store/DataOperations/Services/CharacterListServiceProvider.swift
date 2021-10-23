//
//  CharacterListServiceProvider.swift
//  E-Store
//
//  Created by DarkBringer on 24.10.2021.
//

import Foundation
import DefaultNetworkOperationPackage

class CharacterListServiceProvider: ApiServiceProvider<CharacterListRequest> {
    
    init(request: CharacterListRequest) {
        super.init(method: .get,
                   baseUrl: BaseURL.main.description,
                   path: Paths.characters.description,
                   data: request)
    }
    
}
