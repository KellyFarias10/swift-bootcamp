//
//  HomeRouteTableViewCell.swift
//  Tests
//
//  Created by Kelly Jocelyn Farías Gómez on 08/02/24.
//

import UIKit

class HomeRouteTableViewCell: UITableViewCell {
    static let identifier:String="HomeRouteTableViewCell"
    
    @IBOutlet weak var lblName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    func setup(data:HomeItemEntity){
        lblName.text = data.name
    }
    
}
