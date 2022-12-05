//
//  CustomerServiceTableViewCell.swift
//  starbuckkMock
//
//  Created by Jaeho Jung on 2022/12/05.
//

import UIKit

class CustomerServiceTableViewCell: UITableViewCell {
    
    let cellId = "CustomerServiceTableViewCell"
    func nib() -> UINib {
        return UINib(nibName: "CustomerServiceTableViewCell", bundle: nil)
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
