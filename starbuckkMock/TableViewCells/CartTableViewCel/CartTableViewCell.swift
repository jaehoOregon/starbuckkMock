//
//  CartTableViewCell.swift
//  starbuckkMock
//
//  Created by Jaeho Jung on 2022/12/18.
//

import UIKit

class CartTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var menuImage: UIImageView!
    @IBOutlet weak var nameKor: UILabel!
    @IBOutlet weak var numberOfCups: UILabel!
    @IBOutlet weak var price: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
