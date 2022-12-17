//
//  OrderButtonView.swift
//  starbuckkMock
//
//  Created by Jaeho Jung on 2022/12/17.
//

import UIKit

protocol OrderButtonViewDelegate {
    func eventCustomView()
}

@IBDesignable
class OrderButtonView: UIView {
    
    private var delegate: OrderButtonViewDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }
    
    private func commonInit() {
        let view = Bundle.main.loadNibNamed("OrderButtonView",
                                            owner: self,
                                            options: nil)?.first as! UIView
        view.frame = self.bounds
        self.addSubview(view)
    }
    
    @IBOutlet weak var orderButton: UIButton!
    
    @IBAction func placeOrder(_ sender: UIButton) {
        self.delegate?.eventCustomView()
        print("button clicked")
    }
}


