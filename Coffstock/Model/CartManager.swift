//
//  CartManager.swift
//  Coffstock
//
//  Created by Ayush Pratap Singh on 05/05/22.
//

import Foundation


class CartManager:ObservableObject {
    @Published var cart : [(Product,Int)] = []
}
