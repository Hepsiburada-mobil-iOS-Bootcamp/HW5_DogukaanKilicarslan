//
//  CharacterDetailServiceProvider.swift
//  E-Store
//
//  Created by DarkBringer on 24.10.2021.
//

import Foundation
import DefaultNetworkOperationPackage

class CharacterDetailServiceProvider: ApiServiceProvider<CharacterDetailRequest> {
    
    init(request: CharacterDetailRequest) {
        super.init(method: .get,
                   baseUrl: BaseURL.main.description,
                   path: Paths.detail(request.characterId ?? 0).description,
                   data: request)
    }
    
}
