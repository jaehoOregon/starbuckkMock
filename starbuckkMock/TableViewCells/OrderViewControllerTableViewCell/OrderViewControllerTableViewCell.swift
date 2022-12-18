//
//  OrderViewControllerTableViewCell.swift
//  starbuckkMock
//
//  Created by Jaeho Jung on 2022/12/08.
//

import UIKit

class OrderViewControllerTableViewCell: UITableViewCell {

    @IBOutlet weak var koreanName: UILabel!
    @IBOutlet weak var englishName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
