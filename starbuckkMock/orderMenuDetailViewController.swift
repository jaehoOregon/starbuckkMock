//
//  orderMenuDetailViewController.swift
//  starbuckkMock
//
//  Created by Jaeho Jung on 2022/12/09.
//
// youtube: UIScrollView의 비밀, https://youtu.be/aS7GUtcGKGk
// UIView dynamic height depending on Label Height: https://stackoverflow.com/questions/39410796/uiview-dynamic-height-depending-on-label-height
// SwiftUI 2.0 Scroll To Top With Floating Action Button - ScrollView Offset - SwiftUI Tutorials: https://youtu.be/TCpZwZ9MiMY
// swift failed to render and update auto layout status for OrderButtonView (iNO-I3-epB): The agent threw an exception. : IBDesignable 에러에 대응하는 방법,  https://medium.com/@esung/ibdesignable-%EC%97%90%EB%9F%AC%EC%97%90-%EB%8C%80%EC%9D%91%ED%95%98%EB%8A%94-%EB%B0%A9%EB%B2%95-254001a648f6

import UIKit

class orderMenuDetailViewController: UIViewController {
    
    let screenRect = UIScreen.main.bounds
    
    var menuInfo: Drink? = nil
    
    @IBOutlet weak var menuImageView: UIView!
    @IBOutlet weak var menuImage: UIImageView!
    @IBOutlet weak var menuNameKor: UILabel!
    @IBOutlet weak var menuNameEng: UILabel!
    @IBOutlet weak var menuFlavorNote: UILabel!
    @IBOutlet weak var menuPrice: UILabel!
    
    @IBOutlet weak var placeOrderButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        let screenWidth = screenRect.size.width
//        print(menuInfo)
        
        setUpNavigationBackBar()

        menuNameKor.text = menuInfo?.nameKor
        menuNameEng.text = menuInfo?.nameEng
        let info = menuInfo?.flavorNote ?? ""
        menuFlavorNote.text = "Flavor Note \(info)"
        let price = menuInfo?.price ?? 1000
        menuPrice.text = "\(price)원"
        menuImage.image = menuInfo?.image
        
    }
    
    func setUpNavigationBackBar() {
        let backButton = UIBarButtonItem()
        backButton.title = ""
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
    }

    @IBAction func placeOrderButton(_ sender: UIButton) {
        let selectedMenu: Drink = menuInfo!
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "PlaceOrderViewController") as? PlaceOrderViewController else { return }
        vc.menuInfoForOrder = selectedMenu
        let defaultPrice = selectedMenu.price
//        print(test)
        vc.priceByCups = defaultPrice
        vc.modalPresentationStyle = .automatic
        present(vc, animated: true, completion: nil)
        print("clicked")
    }
}


