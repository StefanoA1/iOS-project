//
//  books.swift
//  iOS
//
//  Created by epita on 29/03/2018.
//  Copyright © 2018 epita. All rights reserved.
//

import Foundation

class Spots { // : superclass (not the case here)

    var author : String?
    var title : String?
    var year : String?
    var description : String?
    var image : String?
    
    init(author:String, title:String, year:String, description:String) {
        
        self.author = author
        self.title = title
        self.year = year
        self.description = description
//        self.image = image
    }
    
}

