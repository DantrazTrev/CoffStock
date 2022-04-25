//
//  ContentView.swift
//  Coffstock
//
//  Created by Ayush Pratap Singh on 24/04/22.
//

import SwiftUI

struct ContentView: View {
    @State var name = "Dante"
    var body: some View {
        VStack {
            Text("Hei, \(name)!").fontWeight(.regular).padding().foregroundColor(.green).background(.indigo)
            TextField("Yo Sup?",text:$name)
            HStack{
                Text("Hei, Franike!").padding().opacity(0.6)
                    Text("Hei, Destuchland!").padding()
            }
        }
        
        

           
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
