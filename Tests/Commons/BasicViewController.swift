//
//  BasicViewController.swift
//  Tests
//
//  Created by Kelly Jocelyn Farías Gómez on 01/02/24.
//

import UIKit
class BasicViewController: UIViewController {
    
    /// Views for this controller
    let scrollView:UIScrollView={
        let scroll=UIScrollView()
        scroll.translatesAutoresizingMaskIntoConstraints = false
        return scroll
    }()
    lazy var contentView:UIView={
        let view=UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        addSubViews()
        setupContraints()
    }
    
    func addSubViews(){
        self.view.backgroundColor = .white
        self.view.addSubview(scrollView)
        scrollView.addSubview(contentView)
    }
    
    func setupContraints(){
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.widthAnchor.constraint(equalTo: view.widthAnchor),
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])
    }
   
}


