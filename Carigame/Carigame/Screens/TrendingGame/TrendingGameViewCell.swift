//
//  TrendingGameViewCell.swift
//  Carigame
//
//  Created by Mochamad Dandi on 18/09/22.
//

import UIKit

class TrendingGameViewCell: UITableViewCell {
    @IBOutlet weak var trendingImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var priceView: UIView!
    @IBOutlet weak var priceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        priceView.clipsToBounds = true
        priceView.layer.cornerRadius = 12
        priceView.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMinXMinYCorner]
        
        trendingImageView.clipsToBounds = true
        trendingImageView.layer.cornerRadius = 20
        trendingImageView.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMinXMinYCorner]
        // Initialization code
    }
    
    func setData(data: TrendingGameModels) {
        titleLabel.text = data.title
        trendingImageView.image = data.image
        categoryLabel.text = data.category
        ratingLabel.text = String(data.rating)
        priceLabel.text = String(data.price)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
