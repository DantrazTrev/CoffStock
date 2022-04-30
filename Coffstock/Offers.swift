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
        VStack{
            Text("\(title)").padding().font(.title)
            Text("\(descr)")
        }
    }
}

struct Offers_Previews_Dark: PreviewProvider {
    static var previews: some View {
        Group {
            Offer(title: "$50 for $10", descr: "Stocks")
                .previewLayout(.fixed(width: 300.0, height: 200.0))
            .previewInterfaceOrientation(.portrait)
        }
    }
}
