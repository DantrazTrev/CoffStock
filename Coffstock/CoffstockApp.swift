//
//  CoffstockApp.swift
//  Coffstock
//
//  Created by Ayush Pratap Singh on 24/04/22.
//

import SwiftUI

@main
struct CoffstockApp: App {
    var menuManager = MenuManager()
    var cartManager = CartManager()
    var likesManager = LikesManager()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(menuManager)
                .environmentObject(cartManager)
            .environmentObject(likesManager)
        }
    }
}
