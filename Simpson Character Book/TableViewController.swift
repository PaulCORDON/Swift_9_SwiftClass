//
//  ViewController.swift
//  Simpson Character Book
//
//  Created by MAC-DIN-002 on 21/05/2019.
//  Copyright © 2019 MAC-DIN-002. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate , UITableViewDataSource{
    
    

    @IBOutlet weak var tableView: UITableView!
    var mySimpsons = [Simpson]()
    var chosenSimpson = Simpson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*tableView setup*/
        tableView.delegate = self
        tableView.dataSource = self
        
        /*create our simpson*/
        let homer = Simpson()
        homer.name = "Homer Simpson"
        homer.age = "39"
        homer.img = UIImage(named: "Homer.png")!
        
        let bart = Simpson()
        bart.name = "Bart Simpson"
        bart.age = "10"
        bart.img = UIImage(named: "Bart.png")!
        
        let lisa = Simpson()
        lisa.name = "Lisa Simpson"
        lisa.age = "8"
        lisa.img = UIImage(named: "Lisa.png")!
        
        let maggie = Simpson()
        maggie.name = "Maggie Simpson"
        maggie.age = "1"
        maggie.img = UIImage(named: "Maggie.png")!
        
        mySimpsons.append(homer)
        mySimpsons.append(bart)
        mySimpsons.append(lisa)
        mySimpsons.append(maggie)
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpsons[indexPath.row].name
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.chosenSimpson = mySimpsons[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectedSimpson = chosenSimpson
        }
    }
}

