//
//  HomeViewController + UITableView.swift
//  Tests
//
//  Created by Kelly Jocelyn Farías Gómez on 08/02/24.
//

import UIKit
extension HomeViewController{
    func setup(table:UITableView){
        table.delegate=self
        table.dataSource=self
        let sectionNib = UINib(nibName: HomeSectionTableViewCell.identifier, bundle: nil)
        table.register(sectionNib, forCellReuseIdentifier: HomeSectionTableViewCell.identifier)
        let childNib = UINib(nibName: HomeRouteTableViewCell.identifier, bundle: nil)
        table.register(childNib, forCellReuseIdentifier: HomeRouteTableViewCell.identifier)
        table.reloadData()
    }
}
extension HomeViewController:UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return presenter?.getCountSections() ?? 0
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter?.getCountOptions(section: section) ?? 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let data:HomeItemEntity=presenter?.getItem(index: indexPath.row, sectio: indexPath.section) else{
            return UITableViewCell()
        }
        if indexPath.row == 0 {
            let   cell = tableView.dequeueReusableCell(withIdentifier: HomeSectionTableViewCell.identifier) as! HomeSectionTableViewCell
            cell.setup(data: data)
            cell.selectionStyle = .none
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: HomeRouteTableViewCell.identifier) as! HomeRouteTableViewCell
            cell.setup(data: data)
            cell.selectionStyle = .none
            return cell
        }
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
}
extension HomeViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row != 0 {
            guard let step:HomeItemEntity=presenter?.getItem(index: indexPath.row, sectio: indexPath.section) else {return}
            debugPrint("click go To section: \(indexPath.section) option:\(indexPath.row) id \(step.name)")
            presenter?.goTo(section: Section(section: indexPath.section, option: indexPath.row))
           openAppStore(url: URL(string: "https://www.google.com")!, closure: { opened in
                self.openAppStore(url: URL(string: "https://www.facebook.com")!,closure: { opened in
                    self.checkOpen(open: opened, url: URL(string: "https://www.facebook.com")!)
                })
            })
            
        }
    }
    
    func checkOpen(open:Bool,url:URL){
        if !open {
            openAppStore(url: url, closure:({ open in
                    self.checkOpen(open: open, url: url)
                
            }))
        }
    }
    
}
