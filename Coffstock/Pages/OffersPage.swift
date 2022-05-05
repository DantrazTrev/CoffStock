//
//  OffersPage.swift
//  Coffstock
//
//  Created by Ayush Pratap Singh on 01/05/22.
//

import SwiftUI

struct OffersPage: View {
    var body: some View {
        NavigationView {
            VStack{
                List {
                    Group{
                        Offer(title: "Early Coffee", descr: "10% off. Offer valid from 6am to 9am.")
                    Offer(title: "Welcome Gift", descr: "25% off on your first order.")
                    
                    }  .listRowBackground(Color.clear)
                        .listRowSeparator(.hidden)
                }
                
                .navigationTitle("Offers")
               
            }
        }
        
    }
}

struct OffersPage_Previews: PreviewProvider {
    static var previews: some View {
        OffersPage()
    }
}
