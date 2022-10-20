//
//  ViewController.swift
//  DiscoverScreenTemplate
//
//  Created by Ceren on 20.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var verticalCollectionView: UICollectionView!
    @IBOutlet weak var horizantalCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        verticalCollectionView.delegate = self
        verticalCollectionView.dataSource = self
        
        horizantalCollectionView.delegate = self
        horizantalCollectionView.dataSource = self
    }


}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == verticalCollectionView {
            return 5
        }
        return 14
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
                
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MainCollectionViewCell", for: indexPath) as? MainCollectionViewCell {
            
            cell.imageView.image = UIImage(named: "new_picture")
            return cell
            
        } else {
            return UICollectionViewCell()
        }
    }
    
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = self.view.frame.width - 16.0 * 2
        let height: CGFloat = 234.0
        
        return CGSize(width: width, height: height)
    }
}
