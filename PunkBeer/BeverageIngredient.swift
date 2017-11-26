//
//  BeverageIngredient.swift
//  PunkApi
//
//  Created by Luiz Aquino on 26/11/17.
//  Copyright © 2017 Luiz Aquino. All rights reserved.
//

import Foundation

class BeverageIngredient {
    var malt: [BeverageMalt];
    var hops: [BeverageHop];
    var yeast: String;
    
    init(malt: [BeverageMalt], hops: [BeverageHop], yeast: String) {
        self.malt = malt;
        self.hops = hops;
        self.yeast = yeast;
    }
}
