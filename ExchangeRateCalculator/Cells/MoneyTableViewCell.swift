//
//  MoneyTableViewCell.swift
//  ExchangeRateCalculator
//
//  Created by 김경훈 on 2022/10/11.
//

import UIKit

class MoneyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var countryImgView: UIImageView!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var basePriceLabel: UILabel!
    @IBOutlet weak var unitLabel: UILabel!
 
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
