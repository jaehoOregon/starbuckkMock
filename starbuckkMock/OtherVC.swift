//
//  OtherVC.swift
//  starbuckkMock
//
//  Created by Jaeho Jung on 2022/12/03.
//

import UIKit

class OtherVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var data = enumArrays
    var welcomeInfo = SectionWelcome1()
//    var welcome = SectionWelcome.toString(2)
//    var data = Test.allValues
//    var data: [Sections] = Sections.cases
//    var testData = test.self
    
//    var test = Test.self
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(data[0])
        print(data[1])
//        print(welcome.toString(2))
    }
}

extension OtherVC: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "test")
        return cell!
//        let cell = tableView.dequeueReusableCell(withIdentifier: OtherVCTableViewCell) as? OtherVCTableViewCell
//        cell.cellTitle = "test"
//        return cell
//        var cell = tableView.dequeueReusableCell(withIdentifier: "OtherVCTableViewCell") as? OtherVCTableViewCell {
//            // Show SubCategory Title
//            let sectionInfo = data[indexPath.section]
//            let cellTitle.text = sectionInfo.t
//            sectionInfo
////            cell.subCategoryLabel.text = subCategoryTitle[indexPath.row]
////
////            // Pass the data to colletionview inside the tableviewcell
////            let rowArray = colorsArray.objectsArray[indexPath.section].colors[indexPath.row]
////            cell.updateCellWith(row: rowArray)
//
//            return cell
    }


}
