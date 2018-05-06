//
//  spots.swift
//  myFoodSpots
//
//  Created by Stefano on 28/03/2018.
//  Copyright © 2018 Stefano. All rights reserved.
//

import Foundation

class Spots {
    // create the structure of the class Spots
    var restaurant : String?
    var dish : String?
    var place : String?
    var description : String?
    // Set an image as string first, to look it up later in assets when the custom cell is created(tacos, etc)
    var image : String?
    
    init(restaurant:String, dish:String, place:String, description:String, image:String) {
        self.restaurant = restaurant
        self.dish = dish
        self.place = place
        self.description = description
        self.image = image
    }
    
}

