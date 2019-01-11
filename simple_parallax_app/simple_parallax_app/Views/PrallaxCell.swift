//
//  PrallaxCell.swift
//  simple_paralax
//
//  Created by Denis Nefedov on 11/01/2019.
//  Copyright © 2019 X. All rights reserved.
//

import UIKit

class PrallaxCell: UITableViewCell {
    
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellLabel: UILabel!
    
    
    func configeureCell(with image: UIImage, andDescription desc: String) {
        self.cellImage.image = image
        self.cellLabel.text = desc
    }
    
    func setupParallax() {
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code setupParallax
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

