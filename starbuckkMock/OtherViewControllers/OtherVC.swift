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
        
        otherVCTableView.register(DeliverTableViewCell().nib(), forCellReuseIdentifier: DeliverTableViewCell().cellId)
        
        otherVCTableView.register(CustomerServiceTableViewCell().nib(), forCellReuseIdentifier: CustomerServiceTableViewCell().cellId)

        otherVCTableView.register(UINib(nibName: "TableViewFooterView", bundle: nil), forHeaderFooterViewReuseIdentifier: "TableViewFooterView")
        
    }
}

extension OtherVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 400
        } else if indexPath.row == 5 {
            return 300
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
        return 6
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
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: "DeliverTableViewCell") as! DeliverTableViewCell
            return cell
        case 5:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CustomerServiceTableViewCell") as! CustomerServiceTableViewCell
            return cell
        default:
            return UITableViewCell()
        }
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 80
    }
 
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "TableViewFooterView") as! TableViewFooterView
        return footerView
    }
}


