//
//  OrderTableViewCell.swift
//  starbuckkMock
//
//  Created by Jaeho Jung on 2022/12/05.
//

import UIKit

class OrderTableViewCell: UITableViewCell {
    
    let cellId = "OrderTableViewCell"
    func nib() -> UINib {
        return UINib(nibName: "OrderTableViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
