//
//  MainCollectionViewCell.swift
//  DiscoverScreenTemplate
//
//  Created by Ceren on 20.10.2022.
//

import UIKit

@IBDesignable class MainCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
}
