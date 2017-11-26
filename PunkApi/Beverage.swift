//
//  Beverage.swift
//  PunkApi
//
//  Created by Luiz Aquino on 26/11/17.
//  Copyright © 2017 Luiz Aquino. All rights reserved.
//

import Foundation

class Beverage {
    var id: Int;
    var name: String;
    var tagline: String
    var firstBrewed: String;
    var description: String;
    var imageUrl: String;
    var abv: Double;
    var ibu: Double;
    var targetFg: Int;
    var targetOg: Int;
    var ebc: Int;
    var srm: Int;
    var ph: Double;
    var attenuationLevel: Int;
    var volume: ValueUnit!;
    var boilVolume: ValueUnit!;
    var method: BeverageMethod!;
    var ingredients: BeverageIngredient!;
    var foodPairing: [String];
    var brewersTips: String!;
    var contributedBy: String!;
    
    init(id: Int, name: String, tagline: String, firstBrewed: String, description: String, imageUrl: String, abv: Double, ibu: Double, targetFg: Int, targetOg: Int, ebc: Int, srm: Int, ph: Double, attenuationLevel: Int, volume: ValueUnit, boilVolume: ValueUnit, method: BeverageMethod, ingredients: BeverageIngredient , foodPairing: [String], brewersTips: String, contributedBy: String){
        self.id = id;
        self.name = name;
        self.tagline = tagline;
        self.firstBrewed = firstBrewed;
        self.description = description;
        self.imageUrl = imageUrl;
        self.abv = abv;
        self.ibu = ibu;
        self.targetFg = targetFg;
        self.targetOg = targetOg;
        self.ebc = ebc;
        self.srm = srm;
        self.ph = ph;
        self.attenuationLevel = attenuationLevel;
        self.volume = volume;
        self.boilVolume = boilVolume;
        self.ingredients = ingredients;
        self.method = method;
        self.foodPairing = foodPairing;
        self.brewersTips = brewersTips;
        self.contributedBy = contributedBy;
    }
    
    init(id: Int, name: String, tagline: String, firstBrewed: String, description: String, imageUrl: String, abv: Double, ibu: Double) {
        self.id = id;
        self.name = name;
        self.tagline = tagline;
        self.firstBrewed = firstBrewed;
        self.description = description;
        self.imageUrl = imageUrl;
        self.abv = abv;
        self.ibu = ibu;
        
        self.targetFg = 0;
        self.targetOg = 0;
        self.ebc = 0;
        self.srm = 0;
        self.ph = 0.0;
        self.attenuationLevel = 0;
        self.volume = nil;
        self.boilVolume = nil;
        self.ingredients = nil;
        self.method = nil;
        self.foodPairing = [];
        self.brewersTips = nil;
        self.contributedBy = nil;
    }
}

