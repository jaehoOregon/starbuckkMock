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
    
    private var floatingButton: UIButton?
    
    var menuInfo: Drink? = nil
    
    @IBOutlet weak var menuImage: UIView!
    @IBOutlet weak var menuNameKor: UILabel!
    @IBOutlet weak var menuNameEng: UILabel!
    @IBOutlet weak var menuFlavornote: UILabel!
    @IBOutlet weak var menuPrice: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        menuNameKor.text = menuInfo?.nameKor
        menuNameEng.text = menuInfo?.nameEng
        menuFlavornote.text = menuInfo?.flavorNote
        menuPrice.text = "\(menuInfo!.price)원"
                
//        print("orderMenuDetailViewController\(menuInfo)")

    }
    
}
