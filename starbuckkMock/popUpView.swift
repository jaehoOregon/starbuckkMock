//
//  popUpView.swift
//  starbuckkMock
//
//  Created by Jaeho Jung on 2022/12/18.
//

import UIKit

class popUpView: UIView {
    
    var vc: UIViewController!
    var view: UIView!
    
    @IBOutlet weak var moveToCartButton: UIButton!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    init(frame: CGRect, inView: UIViewController) {
        super.init(frame: frame)
        xibSetup(frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height))
        
        vc = inView
    }
    
    func xibSetup(frame: CGRect) {
        self.view = loadNibVieW()
        view.frame = frame
        addSubview(view)
    }
    
    func loadNibVieW() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "popUpView", bundle: bundle)
        let view = nib.instantiate(withOwner: self,  options: nil).first as! UIView
        return view
    }
}
