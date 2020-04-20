//
//  Service.swift
//  MVP
//
//  Created by Eyad Heikal on 4/20/20.
//  Copyright © 2020 Eyad Heikal. All rights reserved.
//

import Foundation
import Apollo

class Service {
    
    static let shared = Service()
    private(set) lazy var apollo = ApolloClient(url: URL(string: Const.API)!)

    private init () {
        
    }
    
    

}
