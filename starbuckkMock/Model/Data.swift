//
//  data.swift
//  starbuckkMock
//
//  Created by Jaeho Jung on 2022/12/01.
//

import Foundation
import UIKit

struct Drink {
    let category: DrinkCategory
    let option: tempOption
    let nameKor: String
    let nameEng: String
    let price: Int
    let flavorNote: String
    let notes: String
    let image: UIImage?
    let nutritions: [NutritionInfo]
    let allergens: [String?]
    let similarDrink: [Drink]?
    let note: Note
}


enum DrinkCategory: Int {
    case reserveEspresso = 0
    case reserveDrip = 1
    case starbucksRefreshers = 2
    case coldBrew = 3
    case blondBrew = 4
    case Espresso = 5
    case decafCoffee = 6
    case grappuccino = 7
    case blendid = 8
    case starbucksfizzio = 9
    case teavana = 10
    case brewedCoffee = 11
    case others = 12
    case rtd = 13
    
    func toStringKor(_ index: Int) -> String {
        let options = ["리저브 에스프레소", "리저브 드립", "리프레셔", "콜드 브루", "블론드", "에스프레소", "디카페인 커피", "프라푸치노", "블렌디드", "피지오", "브루드 커피", "아포가토/기타", "병음료"]
        return options[index]
    }
    
    func toStringEng(_ index: Int) -> String {
        let options = ["Reserve Espresso", "Reserve Drip", "Starbucks Refresher", "Cold Brew", "Blonde Coffee", "Espresso", "Decaf Coffee", "Frappuccino", "Blended", "Starbucks fizzio", "Brewed Coffee", "Others", "RTD"]
        return options[index]
    }

}

struct Food {
    let category: String
    let nameKor: String
    let nameEng: String
    let price: Int
    let flavorNote: String
    let notes: String
    let image: UIImage
    let nutritionInfo: NutritionInfo
    let alergicFactors: [String]
    let detailedInfo: [String:String]
    let similarFood: [Food]
}

struct NutritionInfo {
    let size: Size
    let calory: Int
    let carbohydrate: Int
    let sugars: Int
    let natrium: Int
    let protein: Int
    let fat: Int
    let cholestrol: Int
    let transfat: Int
    let caffeine: Int
    let saturatedFat: Float
    let warning: Warning
}

enum tempOption: Int {
    case hotAndIced = 0
    case hotOnly = 1
    case icedOnly = 2

    func toString(_ index: Int) -> Any {
        let options: [Any] = [["HOT", "ICED"], "HOT ONLY", "ICED ONLY"]
        return options[index]
    }
}

enum Size: Int {
    case short = 0
    case tall = 1
    case grande = 2
    case Venti = 3
    
    func toString(_ index: Int) -> String {
        let options: [String] = ["Short", "Tall", "Grande", "Venti"]
        return options[index]
    }
    
    func toVolume(_ index: Int) -> [Int] {
//        let oneFlOz = 29.5735
        let options: [[Int]] = [[237, 8], [355, 12], [473, 16], [591, 20]]
        return options[index]
    }
}

enum Warning: Int {
    case highCaffeine = 0

    func toString(_ index: Int) -> String {
        let options: [String] = ["고카페인 함유 : 해당 제품은 고카페인 음료입니다. 어린이, 임산부,  카페인 민감자는 섭취에 주의해 주시기 바랍니다."]
        return options[index]
    }
}


enum Note: Int {
    case reserve = 0
    case reserveOnly = 1
    case comePickup = 2
    case couldBeDifferent = 3
    case personOption = 4
    
    func toString(_ index: Int) -> String {
        let options: [String] = ["리저브R 매장에서만 주문 가능한 음료입니다.", "별다방, 센터필드R, 창원NC파크R 매장에서만 주문 가능한 음료입니다.", "픽업대로 오시면 음료를 제조해드립니다 시즌 원두로 추출 시 원두 특징에 맞게 즐길 수 있습니다.", "* 상기 이미지는 연출된 사진으로 실제 제공되는 제품과 상이할 수 있습니다.", "퍼스널 옵션을 선택하여 디카페인이나 블론드로 즐겨보세요."]
        return options[index]
    }
}

struct MenuManager {

    //var myMenu: [Drink, Food] = []

    //c
    //r
    
    //u
    //d
    
}


//enum Option: Int {
//    case hot = 0
//    case hotOnly = 1
//    case iced = 2
//    case icedOnly = 3
//
//    func toString(_ index: Int) -> String {
//        let options = ["HOT", "HOT ONLY", "ICE", "ICED ONLY"]
//        return options[index]
//    }
//}

//
//var drinkStorage: [Drink] = [
//    Drink.init(category: .reserveEspresso, option: .hotOnly, nameKor: "크리스마스 클래식 민트 모카", nameEng: "Christmas Classic Mint Mocha", price: 10000, flavorNote: "스타벅스의 클래식인 페퍼민트 모카를 떠올리게 하는 리저브만의 에스프레소 음료 오트 밀크의 고소함과 다크 초콜릿의 쌉쌀함이 특징인 음료. 한정 기간에만 제공되는 크리스마스 원두로 즐겨보세요", notes: "", image: <#T##UIImage#>, nutritions: [NutritionInfo(size: .grande, calory: 335, carbohydrate: 62, sugars: 43, natrium: 200, protein: 4, fat: 8, cholestrol: 0, transfat: 0, caffeine: 210, saturatedFat: 0.7, warning: .highCaffeine)], allergens: <#[String?]#>, similarDrink: <#T##[Drink]#>, note: .reserve),
//    Drink.init(category: .reserveEspresso, option: .hotOnly, nameKor: "르완다 S 클래식 민트 모카", nameEng: "Rwanda S Classic Mint Mocha", price: 10000, flavorNote: "스타벅스의 클래식인 페퍼민트 모카를 떠올리게 하는 리저브만의 에스프레소 음료 오트 밀크의 고소함과 다크 초콜릿의 쌉쌀함이 특징인 음료. 한정 기간에만 제공되는 르완다 쇼리 원두로 즐겨보세요", notes: "", image: <#T##UIImage#>, nutritions: [NutritionInfo(size: .grande, calory: 335, carbohydrate: 62, sugars: 43, natrium: 200, protein: 4, fat: 8, cholestrol: 0, transfat: 0, caffeine: 210, saturatedFat: 0.7, warning: .highCaffeine)], allergens: <#[String?]#>, similarDrink: <#T##[Drink]#>, note: .reserveOnly),
//    Drink.init(category: .reserveEspresso, option: .hotOnly, nameKor: "클래식 민트 모카", nameEng: "Classic Mint Mocha", price: 8000, flavorNote: "스타벅스의 클래식인 페퍼민트 모카를 떠올리게 하는 리저브만의 에스프레소 음료 오트 밀크의 고소함과 다크 초콜릿의 쌉쌀함이 특징인 음료.", notes: "", image: <#T##UIImage#>, nutritions: [NutritionInfo(size: .grande, calory: 335, carbohydrate: 62, sugars: 43, natrium: 200, protein: 4, fat: 8, cholestrol: 0, transfat: 0, caffeine: 210, saturatedFat: 0.7, warning: .highCaffeine)], allergens: <#[String?]#>, similarDrink: <#T##[Drink]#>, note: .reserve),
//    Drink.init(category: .reserveDrip, option: .icedOnly, nameKor: "민트 콜드 브루", nameEng: "Mint Cold Brew", price: 8000, flavorNote: "상쾌한 민트향 시럽과 잘게 갈린 얼음이 어우러져 시원함이 강렬하게 느껴지는 리저브만의 클드 브루 음료", notes: "", image: <#T##UIImage#>, nutritions: [NutritionInfo(size: .grande, calory: 100, carbohydrate: 24, sugars: 23, natrium: 0, protein: 0, fat: 0, cholestrol: 0, transfat: 0, caffeine: 415, saturatedFat: 0, warning: .highCaffeine)], allergens: <#[String?]#>, similarDrink: <#T##[Drink]#>, note: .reserve),
//    Drink.init(category: .reserveDrip, option: .icedOnly, nameKor: "리저브 나이트로", nameEng: "Reserve Nitro", price: 7500, flavorNote: "나이트로 커피 정통의 캐스케이딩과 부드러운 콜드 크레마! 부드러운 목 넘김과 완벽한 밸런스에 커피 본연의 단맛을 경험할 수 있습니다.", notes: "", image: <#T##UIImage#>, nutritions: [NutritionInfo.init(size: .tall, calory: 5, carbohydrate: 0, sugars: 0, natrium: 0, protein: 0, fat: 0, cholestrol: 0, transfat: 0, caffeine: 190, saturatedFat: 0, warning: .highCaffeine), NutritionInfo(size: .grande, calory: 5, carbohydrate: 0, sugars: 0, natrium: 0, protein: 0, fat: 0, cholestrol: 0, transfat: 0, caffeine: 250, saturatedFat: 0, warning: .highCaffeine)], allergens: <#[String?]#>, similarDrink: <#T##[Drink]#>, note: .comePickup),
//    Drink.init(category: .Espresso, option: .hotAndIced, nameKor: "토피 넛 라떼", nameEng: "Toffee Nut Latter", price: 6100, flavorNote: "", notes: "스타벅스의 겨울 시그니쳐 음료 버터 향이 은은하게 느껴지는 토피와 고소한 견과류의 풍미, 진한 에스프레소가 어우러진 크리스마스 시즌 음료", image: <#T##UIImage#>, nutritions: [NutritionInfo.init(size: .tall, calory: 5, carbohydrate: 0, sugars: 0, natrium: 0, protein: 0, fat: 0, cholestrol: 0, transfat: 0, caffeine: 190, saturatedFat: 0, warning: .highCaffeine), NutritionInfo(size: .grande, calory: 5, carbohydrate: 0, sugars: 0, natrium: 0, protein: 0, fat: 0, cholestrol: 0, transfat: 0, caffeine: 250, saturatedFat: 0, warning: .highCaffeine)], allergens: ["우유"], similarDrink: <#T##[Drink]#>, note: .couldBeDifferent),
//    Drink.init(category: .Espresso, option: .hotAndIced, nameKor: "카페 모카", nameEng: "Caffe Mocha", price: 5500, flavorNote: "", notes: "진한 초콜릿 모카 시럽과 풍부한 에스프레소를 스팀 밀크와 섞어 휘핑크림으로 마무리한 음료로 진한 에스프레소와 초콜릿 맛이 어우러진 커피", image: <#T##UIImage#>, nutritions: [NutritionInfo.init(size: .short, calory: 200, carbohydrate: 22, sugars: 17, natrium: 65, protein: 7, fat: 11, cholestrol: 35, transfat: 0, caffeine: 90, saturatedFat: 6, warning: .highCaffeine), NutritionInfo(size: .tall, calory: 5, carbohydrate: 0, sugars: 0, natrium: 0, protein: 0, fat: 0, cholestrol: 0, transfat: 0, caffeine: 190, saturatedFat: 0, warning: .highCaffeine), NutritionInfo(size: .grande, calory: 5, carbohydrate: 0, sugars: 0, natrium: 0, protein: 0, fat: 0, cholestrol: 0, transfat: 0, caffeine: 250, saturatedFat: 0, warning: .highCaffeine), NutritionInfo(size: .Venti, calory: 5, carbohydrate: 0, sugars: 0, natrium: 0, protein: 0, fat: 0, cholestrol: 0, transfat: 0, caffeine: 250, saturatedFat: 0, warning: .highCaffeine)], allergens: ["우유"], similarDrink: <#T##[Drink]#>, note: .personOption)
//    ]
//
//

