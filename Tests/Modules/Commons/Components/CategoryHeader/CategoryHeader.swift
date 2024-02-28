//
//  CategoryHeader.swift
//  Tests
//
//  Created by Kelly Jocelyn Farías Gómez on 28/02/24.
//

import UIKit
class CategoryHeader: UIView {
    static let identifier="CategoryHeader"
    
    
    @IBOutlet weak var imgCategoory: UIImageView!
    
    @IBOutlet weak var imgLogo: UIImageView!
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
    init(img:UIImage,logo:UIImage){
        super.init(frame: .zero)
        initSubviews()
    }
    func initSubviews() {
        let nib = UINib(nibName: CategoryHeader.identifier, bundle: nil)
              guard let view = nib.instantiate(withOwner: self, options: nil).first as?
                                  UIView else {fatalError("Unable to convert nib")}
              view.frame = bounds
              view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
              addSubview(view)

          }
    
    func setup(img:UIImage,logo:UIImage){
        imgCategoory.image=img
        imgLogo.image = logo
    }

}
