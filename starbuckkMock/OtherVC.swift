//
//  OtherVC.swift
//  starbuckkMock
//
//  Created by Jaeho Jung on 2022/12/04.
//

import UIKit

class OtherVC: UIViewController {

    @IBOutlet weak var otherVCTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        otherVCTableView.delegate = self
        otherVCTableView.dataSource = self
        
        otherVCTableView.register(UINib(nibName: "TableViewHeaderView", bundle: nil), forHeaderFooterViewReuseIdentifier: "TableViewHeaderView")

        otherVCTableView.register(OtherVCFirstTableViewCell().nib(), forCellReuseIdentifier: OtherVCFirstTableViewCell().cellId)

        otherVCTableView.register(OtherViewControllerTableViewPayCell().nib(), forCellReuseIdentifier: OtherViewControllerTableViewPayCell().cellId)

        otherVCTableView.register(OrderTableViewCell().nib(), forCellReuseIdentifier: OrderTableViewCell().cellId)

        otherVCTableView.register(ShopTableViewCell().nib(), forCellReuseIdentifier: ShopTableViewCell().cellId)

    }
}

extension OtherVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 400
        } else {
            return 220
        }
    }
}

extension OtherVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "TableViewHeaderView") as! TableViewHeaderView
        headerView.tableViewHeaderTitle.text = "Other"
        return headerView
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "OtherVCFirstTableViewCell") as! OtherVCFirstTableViewCell
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "OtherViewControllerTableViewPayCell") as! OtherViewControllerTableViewPayCell
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "OrderTableViewCell") as! OrderTableViewCell
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ShopTableViewCell") as! ShopTableViewCell
            return cell

        default:
            return UITableViewCell()
        }
    }
}


