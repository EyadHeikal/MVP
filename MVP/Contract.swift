//
//  Contract.swift
//  MVP
//
//  Created by Eyad Heikal on 4/25/20.
//  Copyright © 2020 Eyad Heikal. All rights reserved.
//

import Foundation

protocol MainPresenterProtocol {
    func fetchLaunches()
    func getLaunchesArray() -> [String]
    func getLaunches() -> Int
}

protocol MainView: class {
    func reloadData()
}
