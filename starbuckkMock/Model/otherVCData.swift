//
//  otherVCData.swift
//  starbuckkMock
//
//  Created by Jaeho Jung on 2022/12/03.
//

import Foundation

// Other는 셀 개수가 6개인 테이블 뷰가 있음
// 테이블 뷰 header는 Other 라는 제목 존재
// 첫 번째 셀 -> 구조체 5개(별 히스토리, 전자영수증, 나만의 메뉴, 개인정보 관리, 계정정보)
// 두 번째 셀 -> title: Pay, 구조체 4개(스타벅스 카드 등록, 카드 교환권 등록, 쿠폰 등록, 쿠폰 히스토리)
// 세 번째 셀 -> title: Order, 구조체 3개(장바구나, 홀케이크 예약, 히스토리)
// 네 번째 셀 -> title: Shop, 구조체 3개(온라인 스토어 주문내역, e-Gift Item 선물함, e-Gift Card 선물내역
// 다섯 번째 셀 -> title: Delivers, 구조체 3개(주문하기, 장바구니, 배달완료 히스토리)
// 여섯 번째 셀 -> title: 고객지원, 구조체 5개(스토어 케어, 고객의 소리, 매장 정보, 반납기 정보, 마이 스타벅스 리뷰)
// 테이블 뷰 footer에는 로그아웃 버튼 존재

// 최초 접근 방법
// 각 테이블 뷰 셀에 컬렉션 뷰를 넣을 것
// 아래와 같이, enum을 사용해서 자료를 정리(?)하고, 각 case의 index번호를 이용해서 테이블뷰, 컬렉션 뷰 셀에 자료를 전달해 주자고 생각함 (문제점 발견: 각 섹션들의 자료를 각각의 enum으로 작성했는데, enum 들의 Array가 생각하는 것처럼 되지 않음)
/*
enum Sections: Int, CaseIterable {
    
    case sectionWelcome = 0
    case sectionPay = 1
    case sectionOrder = 2
    case sectionShop = 3
    case sectionDelivers = 4
    case sectionCS = 5

    static let cases: [Sections] = [.sectionWelcome, .sectionPay, .sectionOrder, .sectionShop, .sectionDelivers, .sectionCS]
    
    func toString(_ index: Int) -> String {
        let options: [String] = ["님 환경합니다!", "Pay", "Order", "Shop", "Delivers", "고객지원"]
        return options[index]
    }
}
 
*/

struct SectionInfo {

    let sectionArray: [String] = ["SectionWelcome", "SectionPay", "SectionOrder", "SectionShop", "SectionDelievers", "SectionCS"]
    
//    let title: Sections
//    case SectionWelcome = 0
//    case SectionPay = 1
//    case SectionOrder = 2
//    case SectionShop = 3
//    case SectionDelivers = 4
//    case SectionCS = 5
}

enum test: Any {
    case welcome(value: SectionWelcome)
}

enum Sections: Int, CaseIterable {
    
    case sectionWelcome = 0
    case sectionPay = 1
    case sectionOrder = 2
    case sectionShop = 3
    case sectionDelivers = 4
    case sectionCS = 5

    static let cases: [Sections] = [.sectionWelcome, .sectionPay, .sectionOrder, .sectionShop, .sectionDelivers, .sectionCS]
    
    func toString(_ index: Int) -> String {
        let options: [String] = ["님 환경합니다!", "Pay", "Order", "Shop", "Delivers", "고객지원"]
        return options[index]
    }
}

enum SectionWelcome: Int, CaseIterable {
    case history = 0
    case eReciept = 1
    case myMenu = 2
    case personalInfo = 3
    case accountInfo = 4
    
    static let cases: [SectionWelcome] = [.history, .eReciept, .myMenu, .personalInfo, .accountInfo]

    func toString(_ index: Int) -> String {
        let options: [String] = ["별 히스토리", "전자영수증", "나만의 메뉴", "개인정보 보호", "계정정보"]
        return options[index]
    }
}

enum SectionPay: Int {
    case card = 0
    case exchange = 1
    case coupon = 2
    case hisory = 3

    func toString(_ index: Int) -> String {
        let options: [String] = ["스타벅스 카드 등록", "카드 교환권 등록", "쿠폰 등록", "쿠폰 히스토리"]
        return options[index]
    }
}

enum SectionOrder: Int {
    case cart = 0
    case hallCake = 1
    case history = 2

    func toString(_ index: Int) -> String {
        let options: [String] = ["장바구니", "홀케이크 예약", "히스토리"]
        return options[index]
    }
}

enum SectionShop: Int {
    case onlineStoreHistory = 0
    case eGiftItem = 1
    case History = 2

    func toString(_ index: Int) -> String {
        let options: [String] = ["온라인 스토어 주문내역", "e-Gift Item 선물함", "e-Gift Card 선물내역"]
        return options[index]
    }
}

enum SectionDelivers: Int {
    case order = 0
    case card = 1
    case history = 2

    func toString(_ index: Int) -> String {
        let options: [String] = ["주문하기", "장바구니", "배달완료 히스토리"]
        return options[index]
    }
}

enum SectionCS: Int, CaseIterable {
    case storeCare = 0
    case voc = 1
    case storeInfo = 2
    case returnInfo = 3
    case review = 4

    func toString(_ index: Int) -> String {
        let options: [String] = ["스토어 케어", "고객의 소리", "매장 정보", "반납기 정보", "마이 스타벅스 리뷰"]
        return options[index]
    }
}

enum Test {
    case welcome(value: SectionWelcome)
    case pay(value: SectionPay)
    case orders(value: SectionOrder)
    case shop(value: SectionShop)
    case delivers(value: SectionDelivers)
    case cs(value: SectionCS)
    
    static let allValues = [welcome, pay, orders, shop, delivers, cs] as [Any]
    
    func toString(_ index: Int) -> String {
        let options: [String] = ["님 환경합니다!", "Pay", "Order", "Shop", "Delivers", "고객지원"]
        return options[index]
    }
}


let enumArrays = [SectionWelcome.self, SectionCS.self] as [Any]



//class Action {
//    case
////    var state: ActionState = .state(value: .started)
////    func set(state: State) { self.state = .state(value: state) }
////    func cancel() { state = .cancelled }
//}
