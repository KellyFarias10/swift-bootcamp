//
//  ComponentsViewController.swift
//  Tests
//
//  Created by Kelly Jocelyn Farías Gómez on 26/02/24.
//  
//

import UIKit

class ComponentsViewController: UIViewController {
    var presenter: ComponentsPresenterProtocol?
   
    @IBOutlet weak var viewHeader: CategoryHeader!
    @IBOutlet weak var tfBasic: BasicTextField!
    @IBOutlet weak var stackVComponents: UIStackView!
    let tfXibOne=BasicTextField(title: "Other 1")
    override func viewDidLoad() {
        super.viewDidLoad()
        stackVComponents.addArrangedSubview(tfXibOne)
        viewHeader.setup(img: UIImage(), logo: UIImage())
    
        
    }
}

//MARK: ViewProtocol
extension ComponentsViewController: ComponentsViewProtocol {
    
}

