//
//  ContentView.swift
//  Coffstock
//
//  Created by Ayush Pratap Singh on 24/04/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var cartManager:CartManager
    var body: some View {
            TabView{
       
                MenuPage()
                    .tabItem{
                        Image(systemName: "cup.and.saucer")
                        Text("Home")
                    }
              OffersPage()  .tabItem{
                  Image(systemName: "tag")
                  Text("Offers")
              }
             
             OrderPage()  .tabItem{
                 Image(systemName: "cart")
                 Text("Orders")
             }
             .badge(cartManager.cart.count)
  
            InfoPage()
                .tabItem{
                 Image(systemName: "info")
                 Text("Info")
             }
        }
    }

           
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView() .environmentObject(CartManager())
                .environmentObject(MenuManager())
                .environmentObject(LikesManager())
            
        }
    }
}
