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
        let min = CGFloat(-30)
        let max = CGFloat(30)
        
        // effect one for x axis
        let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue = min
        xMotion.maximumRelativeValue = max
        
        //effect two for y axis
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongVerticalAxis)
        yMotion.minimumRelativeValue = min
        yMotion.maximumRelativeValue = max
        
        // creating group for our two effects
        let motionEffectGroup = UIMotionEffectGroup()
        motionEffectGroup.motionEffects = [xMotion, yMotion]
        
        // adding effects to our ImageView
        cellImage.addMotionEffect(motionEffectGroup)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code setupParallax
        setupParallax()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

