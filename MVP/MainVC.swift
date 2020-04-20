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
        print(present!.getLaunches())
        return present!.getLaunches()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: Const.cellReuseIdentifier)
        
        cell.textLabel?.text = present!.getLaunchesArray()?[indexPath.row]
        print(present!.getLaunchesArray()?[indexPath.row])
        
        return cell
        
    }
}
