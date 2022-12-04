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
        
        otherVCTableView.register(UINib(nibName: "OtherVCFirstTableViewCell", bundle: nil), forCellReuseIdentifier: "OtherVCFirstTableViewCell")
        

    }
    

}

extension OtherVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 450
        
    }
    
}

extension OtherVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OtherVCFirstTableViewCell") as! OtherVCFirstTableViewCell
        return cell
    }
}


