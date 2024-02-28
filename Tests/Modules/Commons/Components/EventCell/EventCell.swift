//
//  EventCell.swift
//  Tests
//
//  Created by Kelly Jocelyn Farías Gómez on 28/02/24.
//

import UIKit

class EventCell: UIView {
static let identifier="EventCell"
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initSubviews()
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        initSubviews()
    }
    init(){
        super.init(frame: .zero)
        initSubviews()
    }

    func initSubviews() {
        let nib = UINib(nibName: EventCell.identifier, bundle: nil)
              guard let view = nib.instantiate(withOwner: self, options: nil).first as?
                                  UIView else {fatalError("Unable to convert nib")}
              view.frame = bounds
              view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
              addSubview(view)

          }
}
