//
//  OffersPage.swift
//  Coffstock
//
//  Created by Ayush Pratap Singh on 01/05/22.
//

import SwiftUI

struct OffersPage: View {
    var body: some View {
        NavigationView{
            List{
                Offer(title: "Early Bird", descr: "$5 off from 5AM to 8AM")
                Offer(title: "Diplomat", descr: "10% off for all diplomats")
                    .padding()
                
            }.navigationTitle("Offers")
        }
    }
}

struct OffersPage_Previews: PreviewProvider {
    static var previews: some View {
        OffersPage()
    }
}
