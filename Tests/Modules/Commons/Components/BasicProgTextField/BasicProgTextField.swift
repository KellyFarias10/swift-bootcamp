//
//  BasicProgTextField.swift
//  Tests
//
//  Created by Kelly Jocelyn Farías Gómez on 26/02/24.
//

import UIKit

class BasicProgTextField: UIView {
    
   let stackV:UIStackView={
        let stack=UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints=false
        stack.axis = .vertical
        stack.spacing = 5
        return stack
    }()
    let lblTitle:UILabel={
        let lbl=UILabel()
        lbl.text = "Apellido"
        return lbl
    }()
    let tf:UITextField={
        let tf=UITextField()
        tf.borderStyle = .roundedRect
        return tf
    }()
    var txtPrb:String{
        didSet{
            lblTitle.text = txtPrb + oldValue
        }
        willSet{
            lblTitle.text = newValue + txtPrb
        }
    }
    required init?(coder: NSCoder) {
        self.txtPrb = ""
        super.init(coder: coder)
        setupUI()
        setupConstraints()
    }
    private func setupUI(){
        addSubview(stackV)
        stackV.addArrangedSubview(lblTitle)
        stackV.addArrangedSubview(tf)
    }
    
    init(title:String,value:String){
        self.txtPrb = title
        super.init(frame: .zero)
        lblTitle.text = title
        
    }
   
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            stackV.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            stackV.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
            stackV.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            stackV.trailingAnchor.constraint(equalTo: self.trailingAnchor)
        ])
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        setupStyle()
        
    }
    func setupStyle(){
        
    }
}
