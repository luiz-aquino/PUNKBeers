//
//  MashTemp.swift
//  PunkApi
//
//  Created by Luiz Aquino on 26/11/17.
//  Copyright © 2017 Luiz Aquino. All rights reserved.
//

import Foundation

class MashTemp {
    var temp: ValueUnit;
    var duration: Int;
    
    init(temp: ValueUnit, duration: Int){
        self.temp = temp;
        self.duration = duration;
    }
}
