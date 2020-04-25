//
//  ViewController.swift
//  MVP
//
//  Created by Eyad Heikal on 4/18/20.
//  Copyright © 2020 Eyad Heikal. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var present: MainPresenter?

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self

        present = MainPresenter(self)
        present?.fetchLaunches()

        
    }
}

extension MainVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(present?.getLaunches() as Any)
        guard let x = present?.getLaunches() else {fatalError("Presenter in equal nil")}
        return x
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = MainTableCell(style: .subtitle, reuseIdentifier: MainTableCell.cellReuseIdentifier)
        cell.setupCell(row: indexPath.row, presenter: present)
        return cell
        
    }
}
