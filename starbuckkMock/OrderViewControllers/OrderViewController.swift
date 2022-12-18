//
//  OrderViewController.swift
//  starbuckkMock
//
//  Created by Jaeho Jung on 2022/12/06.
//

import UIKit

class OrderViewController: UIViewController {

//    let manager = MenuManager().getDrinkMenuByCategory(from: DrinkCategory(rawValue: 0)!)
//    let test = DrinkCategory.Espresso.drinkCategoryKorean
//    let test = DrinkCategory(rawValue: 0)!.drinkCategoryKorean
    
    let drinkCategory: [Int] = DrinkCategory.allCases.map{ $0.rawValue }
    let foodCategory: [Int] = FoodCategory.allCases.map{ $0.rawValue }
    let goodsCategory: [Int] = GoodsCategory.allCases.map{ $0.rawValue }
        
    var p: Int!
    
    var orderTableViewDataSourceArray: [String] = []

    @IBOutlet weak var orderCategorySegmentControl: UISegmentedControl!
    @IBOutlet weak var orderTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        orderTableView.dataSource = self
        orderTableView.delegate = self
        
        p = 0
        
        orderTableView.register(UINib(nibName: "OrderViewControllerTableViewCell", bundle: nil), forCellReuseIdentifier: "OrderViewControllerTableViewCell")
        
//        print(test)

    }
    
    
    // outlet과 이름 동일하게 할 필요?
    
    // MARK: orderCategorySegmentControl action
    @IBAction func orderCategorySegmentControl(_ sender: UISegmentedControl) {
        p = sender.selectedSegmentIndex
        orderTableView.reloadData()

    }
}

// MARK: UITableViewDelegate
extension OrderViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let menuListData = MenuManager().getDrinkMenuByCategory(from: DrinkCategory(rawValue: indexPath.row)!)
        let menuListTitle = DrinkCategory(rawValue: indexPath.row)!.drinkCategoryKorean
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "OrderMenuByCategoryViewController") as? OrderMenuByCategoryViewController else { return }
        vc.orderMenuTableViewTitle = menuListTitle
        vc.menuList = menuListData
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: UITableViewDataSource
extension OrderViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let selectedIndex = p
        
        switch selectedIndex {
        case 0: return drinkCategory.count
        case 1: return foodCategory.count
        case 2: return goodsCategory.count
        default: return 1
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let selectedIndex = p
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "OrderViewControllerTableViewCell", for: indexPath) as! OrderViewControllerTableViewCell
        
        switch selectedIndex {
        case 0:
            cell.koreanName.text = DrinkCategory(rawValue: indexPath.row)?.drinkCategoryKorean
            cell.englishName.text = DrinkCategory(rawValue: indexPath.row)?.drinkCategoryEnglish
//            cell.koreanName.text = DrinkCategory(rawValue: indexPath.row)?.drinkCategoryTitles[0]
//            cell.englishName.text = DrinkCategory(rawValue: indexPath.row)?.drinkCategoryTitles[1]
        case 1:
            cell.koreanName.text = FoodCategory(rawValue: indexPath.row)?.foodCategoryKorean
            cell.englishName.text = FoodCategory(rawValue: indexPath.row)?.foodCategoryEnglish
        case 2:
            cell.koreanName.text = GoodsCategory(rawValue: indexPath.row)?.goodsCategoryKorean
            cell.englishName.text = GoodsCategory(rawValue: indexPath.row)?.goodsCategoryEnglish
        default:
            cell.koreanName.text = "failed"
        }
        
        return cell
    }
}
