//
//  BasicTextField.swift
//  Tests
//
//  Created by Kelly Jocelyn Farías Gómez on 26/02/24.
//

import UIKit

class BasicTextField: UIView {
    static let identifier="BasicTextField"

    @IBOutlet weak var tf: UITextField!
    @IBOutlet weak var lblTitle: UILabel!
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            initSubviews()
        }

        override init(frame: CGRect) {
            super.init(frame: frame)
            initSubviews()
        }
    init(title:String){
        super.init(frame: .zero)
        initSubviews()
        setup(title: title)
    }
    func setup(title:String){
        lblTitle.text = title
    }

        func initSubviews() {
            let nib = UINib(nibName: BasicTextField.identifier, bundle: nil)
            guard let view = nib.instantiate(withOwner: self, options: nil).first as?
                                UIView else {fatalError("Unable to convert nib")}
            view.frame = bounds
            view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            addSubview(view)

        }

}
