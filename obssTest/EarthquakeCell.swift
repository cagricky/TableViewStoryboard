//
//  EarthquakeCell.swift
//  obssTest
//
//  Created by Çağrı  İnal  on 9.02.2022.
//

import UIKit

class EarthquakeCell: UITableViewCell {

    @IBOutlet weak var latitudeLabel: UILabel!
    @IBOutlet weak var longitudeLabel: UILabel!
    @IBOutlet weak var humanReadableLocationLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
