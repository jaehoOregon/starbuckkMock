//
//  orderMenuDetailViewController.swift
//  starbuckkMock
//
//  Created by Jaeho Jung on 2022/12/09.
//
// youtube: UIScrollView의 비밀, https://youtu.be/aS7GUtcGKGk
// UIView dynamic height depending on Label Height: https://stackoverflow.com/questions/39410796/uiview-dynamic-height-depending-on-label-height
// SwiftUI 2.0 Scroll To Top With Floating Action Button - ScrollView Offset - SwiftUI Tutorials: https://youtu.be/TCpZwZ9MiMY

import UIKit

class orderMenuDetailViewController: UIViewController {
    
    let screenRect = UIScreen.main.bounds
    
    var menuInfo: Drink? = nil
    
    @IBOutlet weak var menuImage: UIView!
    @IBOutlet weak var menuNameKor: UILabel!
    @IBOutlet weak var menuNameEng: UILabel!
    @IBOutlet weak var menuFlavornote: UILabel!
    @IBOutlet weak var menuPrice: UILabel!
    
    @IBOutlet weak var placeOrderButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let screenWidth = screenRect.size.width
                
    }
    
    @IBAction func placeOrderButton(_ sender: UIButton) {
        
    }
}


