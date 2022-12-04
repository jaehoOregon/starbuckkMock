//
//  OtherVCTableViewCell.swift
//  starbuckkMock
//
//  Created by Jaeho Jung on 2022/12/03.
//

import UIKit

class OtherVCTableViewCell: UITableViewCell {

    
    @IBOutlet weak var cellTitle: UILabel!
    @IBOutlet weak var cellCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
