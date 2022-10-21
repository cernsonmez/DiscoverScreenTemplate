//
//  ViewController.swift
//  DiscoverScreenTemplate
//
//  Created by Ceren on 20.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionTableView.delegate = self
        collectionTableView.dataSource = self
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = collectionTableView.dequeueReusableCell(withIdentifier: "MainTableViewCell", for: indexPath) as? MainTableViewCell {
    
            return cell
            
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200.0
    }
}
