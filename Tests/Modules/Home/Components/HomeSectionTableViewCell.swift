//
//  HomeSectionTableViewCell.swift
//  Tests
//
//  Created by Kelly Jocelyn Farías Gómez on 08/02/24.
//

import UIKit

class HomeSectionTableViewCell: UITableViewCell {
   static let identifier:String="HomeSectionTableViewCell"

    @IBOutlet weak var imgStatus: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setup(data:HomeItemEntity){
        imgStatus.image = UIImage(named: "ic.status.\(data.status ?? 0)")
        lblName.text = data.name
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
