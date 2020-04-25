//
//  MainTableCell.swift
//  MVP
//
//  Created by Eyad Heikal on 4/20/20.
//  Copyright © 2020 Eyad Heikal. All rights reserved.
//

import UIKit

class MainTableCell: UITableViewCell {
    
    static let cellReuseIdentifier = "LaunchCell"

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell(row: Int, presenter: MainPresenter?) {
        self.textLabel?.text = presenter?.getLaunchesArray()[row]
        //self.detailTextLabel?.text = 
    }
}

extension UITableViewCell {
    
}
