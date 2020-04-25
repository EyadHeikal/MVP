//
//  Protocol.swift
//  MVP
//
//  Created by Eyad Heikal on 4/19/20.
//  Copyright © 2020 Eyad Heikal. All rights reserved.
//

import Foundation

extension MainVC: MainView {
    
    func reloadData() {
        self.tableView.reloadData()
    }
}
