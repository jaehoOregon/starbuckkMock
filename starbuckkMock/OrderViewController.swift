//
//  OrderViewController.swift
//  starbuckkMock
//
//  Created by Jaeho Jung on 2022/12/06.
//

import UIKit

class OrderViewController: UIViewController {

    @IBOutlet weak var orderCategorySegmentControl: UISegmentedControl!
    @IBOutlet weak var orderTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        orderTableView.dataSource = self
        orderTableView.delegate = self

    }
}

extension OrderViewController: UITableViewDelegate {
    
}

extension OrderViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        return cell
    }
}
