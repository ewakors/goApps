//
//  ItemCell.swift
//  goApps
//
//  Created by Ewa on 04.10.2017.
//  Copyright © 2017 Ewa. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {

    @IBOutlet weak var itemSubtitleLabel: UILabel!
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var itemTitleLabel: UILabel!
    static let identifier = "cell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setItem(item: Item) {
        itemTitleLabel.text = item.getTitle()
        itemSubtitleLabel.text = item.getSubtitle()
    }

}
