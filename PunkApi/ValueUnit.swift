//
//  ValueUnit.swift
//  PunkApi
//
//  Created by Luiz Aquino on 26/11/17.
//  Copyright © 2017 Luiz Aquino. All rights reserved.
//

import Foundation

class ValueUnit {
    var value: Double;
    var unit: String;
    
    init (value: Double, unit: String){
        self.value = value;
        self.unit = unit;
    }
}
