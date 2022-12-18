//
//  PaymentViewController.swift
//  starbuckkMock
//
//  Created by Jaeho Jung on 2022/12/18.
//

import UIKit

class PaymentViewController: UIViewController {
    
    var selectedMenuList: [Drink] = []
    
    @IBOutlet weak var paymentTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        paymentTableView.delegate = self
        paymentTableView.dataSource = self


    }
}

extension PaymentViewController: UITableViewDelegate {
    
}

extension PaymentViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}
