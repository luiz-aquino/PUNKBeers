//
//  ViewController.swift
//  PunkApi
//
//  Created by Luiz Aquino on 26/11/17.
//  Copyright © 2017 Luiz Aquino. All rights reserved.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {

    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var lbTagline: UILabel!
    @IBOutlet weak var imgBeverage: UIImageView!
    @IBOutlet weak var tvDescription: UITextView!
    @IBOutlet weak var lbAbv: UILabel!
    @IBOutlet weak var lbIbu: UILabel!
    
    var beverage:Beverage!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if beverage != nil {
            lbName.text = beverage.name
            lbTagline.text = beverage.tagline
            tvDescription.text = beverage.description
            imgBeverage.kf.setImage(with: URL(string: beverage.imageUrl))
            lbAbv.text = "\(beverage.abv)"
            lbIbu.text = "\(beverage.ibu)"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

