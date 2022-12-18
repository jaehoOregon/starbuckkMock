//
//  PlaceOrderViewController.swift
//  starbuckkMock
//
//  Created by Jaeho Jung on 2022/12/18.
//

import UIKit

class PlaceOrderViewController: UIViewController {
    
    var popUp: popUpView!
    
    var menuInfoForOrder: Drink? = nil
    
    var cups = 1
    var priceByCups: Int? = 0

    @IBOutlet weak var numberOfCups: UILabel!
    @IBOutlet weak var price: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        price.text = "\(priceByCups! * cups)원"

    }
    
    @IBAction func placeOrder(_ sender: UIButton) {
        let selectedMenu: Drink = menuInfoForOrder!
        let orderList = OrderManager().addSelectedDrink(menu: selectedMenu)
//        var orderList = OrderManager().addSelectedDrink(menu: selectedMenu)
        print("orderList\(orderList)")
    }
    
    @IBAction func addCups(_ sender: UIButton) {
        cups = cups + 1
        numberOfCups.text = String(cups)
        let selectedDrinkPrice = menuInfoForOrder?.price
        priceByCups = selectedDrinkPrice! * cups
        price.text = "\(priceByCups!)원"
        let selectedMenus = [menuInfoForOrder!]
//        for i in 1...cups{
//
//        }
        let orderLists = OrderManager().addSelectedDrinks(menu: selectedMenus)

    }
    
    @IBAction func removeCups(_ sender: UIButton) {
        if cups == 1 {
            numberOfCups.text = String(1)
            priceByCups = menuInfoForOrder!.price * cups
            price.text = "\(priceByCups!)원"
            let selectedMenus = [menuInfoForOrder!]
            let orderLists = OrderManager().addSelectedDrinks(menu: selectedMenus)

        } else {
            cups = cups - 1
            numberOfCups.text = String(cups)
            priceByCups = menuInfoForOrder!.price * cups
            price.text = "\(priceByCups!)원"

        }
    }
    
    @IBAction func cart(_ sender: UIButton) {
     
//        self.popUp = popUpView(frame: self.view.frame, inView: self)
//        popUp.moveToCartButton.addTarget(self, action: #selector(moveToCartButtonClicked), for: .touchUpInside)
//        self.view.addSubview(popUp)
    }
    
    @objc func moveToCartButtonClicked() {
        self.popUp.removeFromSuperview()
    }
}
