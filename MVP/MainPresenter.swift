//
//  Presenter.swift
//  MVP
//
//  Created by Eyad Heikal on 4/19/20.
//  Copyright © 2020 Eyad Heikal. All rights reserved.
//

import Foundation

class MainPresenter {
    
    weak var view: MainView?
    //private let service = Service()
    
    init(_ view: MainView) {
        self.view = view
    }
    private var launchesArray = [String]()

    func fetchLaunches() {
        
        Service.shared.apollo.fetch(query: LaunchesQuery()){ result in
            if let data = try? result.get().data {
                self.fetchSuccess(data.launchesPast!.compactMap{$0?.missionName})
            }
            else {
                
            }
        }
    }
    
    func fetchSuccess(_ arr: [String]) {
        self.launchesArray = arr
        self.view?.reloadData()
    }
    
    func getLaunches() -> Int {
        return launchesArray.count
    }
    
    func getLaunchesArray() -> [String]? {
        
        return launchesArray
    }
}
