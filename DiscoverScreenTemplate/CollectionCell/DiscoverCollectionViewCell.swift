//
//  DiscoverCollectionViewCell.swift
//  DiscoverScreenTemplate
//
//  Created by Ceren on 21.10.2022.
//

import UIKit

class DiscoverCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    public func configure(with model: Model) {
        self.textView.text = model.text
        self.imageView.image = UIImage(named: model.image)
    }
}
