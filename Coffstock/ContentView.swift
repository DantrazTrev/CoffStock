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
                Offer(title: "$50 off", descr: "Maybe lol, i just code")
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
