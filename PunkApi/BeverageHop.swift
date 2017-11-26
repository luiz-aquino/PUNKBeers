//
//  BeverageHop.swift
//  PunkApi
//
//  Created by Luiz Aquino on 26/11/17.
//  Copyright © 2017 Luiz Aquino. All rights reserved.
//

import Foundation

class BeverageHop {
    var name: String;
    var amount: ValueUnit;
    var add: String;
    var attribute: String;
    
    init(name: String, amount: ValueUnit, add: String, attribute: String){
        self.name = name;
        self.amount = amount;
        self.add = add;
        self.attribute = attribute;
    }
}
