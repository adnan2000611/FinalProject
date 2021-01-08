//
//  Book.swift
//  MyBook
//
//  Created by Mac on 1/7/21.
//

import Foundation


struct Book : Hashable{
    let image : String
    let name : String
    let Price : Int
}

var books = [
   Book(image: "javascriptandjquery", name: "java script and jquery", Price: 20),
   Book(image: "HTML&CSS", name: "Html and Css", Price: 29)

]
