//
//  ContentView.swift
//  Coffstock
//
//  Created by Ayush Pratap Singh on 24/04/22.
//

import SwiftUI

struct ContentView: View {
  
    var body: some View {
        VStack {
            TabView{
             Text("Home")
                    .tabItem{
                        Image(systemName: "cup.and.saucer")
                        Text("Home")
                    }
              OffersPage()  .tabItem{
                  Image(systemName: "tag")
                  Text("Offers")
              }
             
             Text("Orders")  .tabItem{
                 Image(systemName: "cart")
                 Text("Orders")
             }
            Text("Info")
                .tabItem{
                 Image(systemName: "info")
                 Text("Info")
             }
            }
        }
    }

           
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            
        }
    }
}
