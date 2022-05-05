//
//  Category.swift
//  Coffstock
//
//  Created by Ayush Pratap Singh on 05/05/22.
//

import Foundation

struct Category:Decodable,Identifiable {
    var name:String
    var products : [Product]
    var id: String{
        return self.name
    }
}
