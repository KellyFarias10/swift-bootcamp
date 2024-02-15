//
//  HomeViewController.swift
//  Tests
//
//  Created by Kelly Jocelyn Farías Gómez on 08/02/24.
//  
//

import UIKit
import AVFoundation
class HomeViewController: UIViewController {
    var presenter: HomePresenterProtocol?
    
    @IBOutlet weak var tableSteps: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup(table: tableSteps)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        presenter?.willAppear()
    }
    
    func openAppStore(url:URL) {
        if UIApplication.shared.canOpenURL(url){
            UIApplication.shared.open(url, options: [:])
        } else {
            print("Can't Open URL on Simulator")
        }
    }
    func openAppStore(url:URL,closure:@escaping (_ opened:Bool)->Void) {
        if UIApplication.shared.canOpenURL(url){
            UIApplication.shared.open(url, options: [:],completionHandler: closure)
        } else {
            print("Can't Open URL on Simulator")
        }
    }
}



