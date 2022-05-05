//
//  Offers.swift
//  Coffstock
//
//  Created by Ayush Pratap Singh on 01/05/22.
//

import SwiftUI

struct Offer: View {
    var title = ""
    var descr = ""
    var body: some View {
        ZStack {
                   Image("BackgroundPattern")
                       .frame(maxWidth: .infinity, maxHeight: 200)
                       .clipped()
                   VStack {
                       Text(title)
                           .padding()
                           .font(.title)
                           .background(Color("CardBackground"))
                       Text(descr)
                           .padding()
                           .background(Color("CardBackground"))
                   }
        }
        .background(Color("CardBackground"))
           }        }
        
        
        


struct Offers_Previews_Dark: PreviewProvider {
    static var previews: some View {
        Group {
            Offer(title: "$50 for $10", descr: "Stocks").previewLayout(.fixed(width: 350, height: 500))
                .preferredColorScheme(.light)
                .previewInterfaceOrientation(.portraitUpsideDown)
                
            
        }
    }
}
