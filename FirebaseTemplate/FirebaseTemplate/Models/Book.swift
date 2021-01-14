//
//  Book.swift
//  FirebaseTemplate
//
//  Created by Mac on 1/11/21.
//  Copyright © 2021 OMAR. All rights reserved.
//

import Foundation

struct Book: Codable, Hashable{
    var image : String
    var name: String
    var price: Int
}

let books = [
    Book(image: "book", name: "Book 1", price: 8)

]
