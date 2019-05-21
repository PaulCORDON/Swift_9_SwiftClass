//
//  DetailsViewController.swift
//  Simpson Character Book
//
//  Created by MAC-DIN-002 on 21/05/2019.
//  Copyright © 2019 MAC-DIN-002. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    var selectedSimpson = Simpson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgView.image = selectedSimpson.img
        nameLabel.text = selectedSimpson.name
        ageLabel.text = "\(selectedSimpson.age) years old"
    }
}
