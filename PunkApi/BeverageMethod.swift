//
//  BeverageMethod.swift
//  PunkApi
//
//  Created by Luiz Aquino on 26/11/17.
//  Copyright © 2017 Luiz Aquino. All rights reserved.
//

import Foundation

class BeverageMethod {
    var mashTemp: MashTemp;
    var fermentation: Fermentation;
    var twist: String;
    
    init(mashTemp: MashTemp, fermentation: Fermentation, twist: String){
        self.mashTemp = mashTemp;
        self.fermentation = fermentation;
        self.twist = twist;
    }
}
