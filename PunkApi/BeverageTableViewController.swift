//
//  BeverageTableViewController.swift
//  PunkApi
//
//  Created by Luiz Aquino on 26/11/17.
//  Copyright © 2017 Luiz Aquino. All rights reserved.
//

import UIKit

class BeverageTableViewController: UITableViewController {

    var beverages: [Beverage] = [];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = UITableViewAutomaticDimension
        loadBeverages()
    }
    
    func loadBeverages() {
        
        REST.loadBeverages { (beverages: [Beverage]?) in
            if let beverages = beverages {
                self.beverages = beverages
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }                
            }
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ViewController {
            if let indexPath = tableView.indexPathForSelectedRow {
                vc.beverage = beverages[indexPath.row]
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return beverages.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        if let cell = cell as? BeverageTableViewCell {
            let beverage = beverages[indexPath.row]
            cell.imgBeverage.kf.setImage(with: URL(string: beverage.imageUrl))
            cell.lbName.text = beverage.name
            cell.lbTagline.text = beverage.tagline
        }

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 106
    }
}
