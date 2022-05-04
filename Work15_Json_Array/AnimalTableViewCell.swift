
//
//  AnimalTableViewCell.swift
//  Work15_Json_Array
//
//  Created by 彭有駿 on 2022/5/4.
//

import UIKit

class AnimalTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var dogImageView: UIImageView!
    
    @IBOutlet weak var typeLabel: UILabel!
    
    @IBOutlet weak var colorLabel: UILabel!
    
    @IBOutlet weak var sexLabel: UILabel!
    
    @IBOutlet weak var placeLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
