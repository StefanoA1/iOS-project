//
//  books.swift
//  iOS
//
//  Created by epita on 29/03/2018.
//  Copyright © 2018 epita. All rights reserved.
//

import Foundation

class Spots { // : superclass (not the case here)

    var restaurant : String?
    var dish : String?
    var place : String?
    var description : String?
    var image : String?
    
    init(restaurant:String, dish:String, place:String, description:String, image:String) {
        
        self.restaurant = restaurant
        self.dish = dish
        self.place = place
        self.description = description
        self.image = image
    }
    
}

