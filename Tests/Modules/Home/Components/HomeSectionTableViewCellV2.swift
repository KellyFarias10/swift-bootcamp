//
//  HomeSectionTableViewCellV2.swift
//  Tests
//
//  Created by Kelly Jocelyn Farías Gómez on 14/02/24.
//

import UIKit
class HomeSectionTableViewCellV2:UITableViewCell{
    let stackH:UIStackView={
        let stack=UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 20
        return stack
    }()
    
    let imgStatus:UIImageView={
       let img=UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    let lblName:UILabel={
       let lbl=UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    let imgArrow:UIImageView={
       let img=UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupAddViews()
        setupContraint()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupAddViews()
        setupContraint()
        
    }
    func setupAddViews(){
        self.contentView.addSubview(stackH)
        [imgStatus, lblName, imgArrow].forEach { stackH.addArrangedSubview($0) }
        
    }
    func setupContraint(){
        NSLayoutConstraint.activate([
            stackH.topAnchor.constraint(equalTo: self.contentView.safeAreaLayoutGuide.topAnchor),
            stackH.topAnchor.constraint(equalTo: self.contentView.safeAreaLayoutGuide.topAnchor)
        ])
    }
    
}
