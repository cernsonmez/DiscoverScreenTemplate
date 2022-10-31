//
//  ViewController.swift
//  DiscoverScreenTemplate
//
//  Created by Ceren on 20.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionTableView: UITableView!

    var models = [Model]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        models.append(Model(text: "Example1", image: "new_picture"))
        models.append(Model(text: "Example2", image: "new_picture_2"))
        models.append(Model(text: "Example3", image: "new_picture_3"))
        collectionTableView.delegate = self
        collectionTableView.dataSource = self
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = collectionTableView.dequeueReusableCell(withIdentifier: "MainTableViewCell", for: indexPath) as? MainTableViewCell {
            cell.configure(with: models)
            return cell
            
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200.0
    }
}

struct Model {
    let text: String
    let image: String
    
    init(text: String, image: String) {
        self.text = text
        self.image = image
    }
}
