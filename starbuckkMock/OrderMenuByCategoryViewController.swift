//
//  OrderMenuByCategoryViewController.swift
//  starbuckkMock
//
//  Created by Jaeho Jung on 2022/12/09.
//

import UIKit

class OrderMenuByCategoryViewController: UIViewController {
    
    @IBOutlet weak var orderMenuTableView: UITableView!
    
    var menuList: [Drink] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        orderMenuTableView.delegate = self
        orderMenuTableView.dataSource = self
        
        orderMenuTableView.register(UINib(nibName: "OrderMenuByCategoryViewControllerTableViewCell", bundle: nil), forCellReuseIdentifier: "OrderMenuByCategoryViewControllerTableViewCell")
        
//        print(menuList[0])
    }
}

extension OrderMenuByCategoryViewController: UITableViewDelegate {
    
}

extension OrderMenuByCategoryViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = UITableViewCell()
        let cell = tableView.dequeueReusableCell(withIdentifier: "OrderMenuByCategoryViewControllerTableViewCell", for: indexPath) as! OrderMenuByCategoryViewControllerTableViewCell
        
        cell.nameKor.text = menuList[indexPath.row].nameKor
        return cell
    }
}
