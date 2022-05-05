//
//  CartManager.swift
//  Coffstock
//
//  Created by Ayush Pratap Singh on 05/05/22.
//

import Foundation


class CartManager:ObservableObject {
    @Published var cart : [(Product,Int)] = []
    
    func add(product:Product,quantity:Int){
        let inCart = self.cart.firstIndex(where: { cartItem in
            cartItem.0.name==product.name
        })
        if(inCart != nil){
            self.cart[Int(inCart!)].1 = self.cart[Int(inCart!)].1 + quantity
        }
        else {
            self.cart.append((product,quantity))}
    }
    func remove(product:Product){
        self.cart.removeAll{itemCart in
            return product.id == itemCart.0.id}
    }
    
    func total() -> Double {
         var total = 0.0
         for item in cart {
             total += item.0.price * Double(item.1)
         }
         return total
     }
}
