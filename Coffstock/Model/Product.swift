//
//  Item.swift
//  Coffstock
//
//  Created by Ayush Pratap Singh on 05/05/22.
//

import Foundation

struct Product:Decodable,Identifiable {
    var id:Int
    var name:String
    var price:Double
    var description:String?
    var image:String
    
    var imageURL: URL {
        URL(string: "https://firtman.github.io/coffeemasters/api/images/\(self.image)")!
    }

}
