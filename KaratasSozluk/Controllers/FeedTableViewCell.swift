//
//  FeedTableViewCell.swift
//  KaratasSozluk
//
//  Created by Ataugur Karatas on 16.11.2022.
//

import UIKit

class FeedTableViewCell: UITableViewCell {
    
    @IBOutlet weak var btnStar: UIButton!
    @IBOutlet weak var btnDelete: UIButton!
    @IBOutlet weak var btnComment: UIButton!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblCategory: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
