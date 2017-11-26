//
//  BeverageMalt.swift
//  PunkApi
//
//  Created by Luiz Aquino on 26/11/17.
//  Copyright © 2017 Luiz Aquino. All rights reserved.
//

import Foundation

class BeverageMalt {
    var name: String;
    var amount: ValueUnit;
    
    init(name: String, amount: ValueUnit){
        self.name = name;
        self.amount = amount;
    }
}
