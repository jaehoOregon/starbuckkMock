//
//  OrderMenuByCategoryViewController.swift
//  starbuckkMock
//
//  Created by Jaeho Jung on 2022/12/09.
//

import UIKit

class OrderMenuByCategoryViewController: UIViewController {
    
    @IBOutlet weak var orderMenuTableView: UITableView!
    
    var orderMenuTableViewTitle: String = ""
    var menuList: [Drink] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        orderMenuTableView.delegate = self
        orderMenuTableView.dataSource = self
        
        setUpNavigationBackBar()
                
        orderMenuTableView.register(UINib(nibName: "TableViewHeaderView", bundle: nil), forHeaderFooterViewReuseIdentifier: "TableViewHeaderView")

        orderMenuTableView.register(UINib(nibName: "OrderMenuByCategoryViewControllerTableViewCell", bundle: nil), forCellReuseIdentifier: "OrderMenuByCategoryViewControllerTableViewCell")
        
//        print(menuList[0])
    }
    
    func setUpNavigationBackBar() {
        let backButton = UIBarButtonItem()
        backButton.title = ""
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
    }
}

extension OrderMenuByCategoryViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let menuInfo = menuList[indexPath.row]
//        print("menuInfoTest\(menuInfo)")
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "orderMenuDetailViewController") as? orderMenuDetailViewController else { return }
        vc.menuInfo = menuInfo
//        vc.orderMenuTableViewTitle = menuListTitle
//        vc.menuList = menuListData
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

extension OrderMenuByCategoryViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "TableViewHeaderView") as! TableViewHeaderView
        headerView.tableViewHeaderTitle.text = orderMenuTableViewTitle
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OrderMenuByCategoryViewControllerTableViewCell", for: indexPath) as! OrderMenuByCategoryViewControllerTableViewCell
        cell.nameKor.text = menuList[indexPath.row].nameKor
        cell.nameEng.text = menuList[indexPath.row].nameEng
        cell.price.text = String(menuList[indexPath.row].price)
        return cell
    }
}
