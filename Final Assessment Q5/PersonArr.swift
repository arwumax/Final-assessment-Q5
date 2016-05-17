//
//  PersonArr.swift
//  Final Assessment Q5
//
//  Created by WuKwok Ho on 17/5/2016.
//  Copyright © 2016 Wu Kwok Ho. All rights reserved.
//

import Foundation

class personInfo {
    var arrayPerson: [person] = []
    
    init() {
        let person1: person = person()
        person1.name = "max"
        person1.image = "max"
        
        let person2: person = person()
        person2.name = "kaho"
        person2.image = "kaho"
        
        let person3: person = person()
        person3.name = "ginger"
        person3.image = "ginger"
        
        let person4: person = person()
        person4.name = "hugo"
        person4.image = "hugo"
        
        arrayPerson = [person1, person2, person3, person4]
    }
}