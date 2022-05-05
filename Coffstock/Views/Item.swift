//
//  Item.swift
//  Coffstock
//
//  Created by Ayush Pratap Singh on 02/05/22.
//

import SwiftUI

struct Item: View {
    
    var product:Product
            
    var body: some View {
        VStack{
            AsyncImage(url:product.imageURL)
                .frame(width: 300, height: 150)
                .background(Color("AccentColor"))
            HStack {
                VStack(alignment: .leading) {
                    Text("\(product.name)")
                        .font(.title3)
                        .bold()
                    Text("$ \(product.price,specifier: "%.2f")")
                        .font(.caption)

                }.padding(8)
                Spacer()
            }
        }
        .background(Color("SurfaceBackground"))
        .cornerRadius(10)
        .padding(.trailing)
    }
}

struct Item_Previews: PreviewProvider {
    static var previews: some View {
        Item(product:Product(id: 1, name: "Coffee", price: 2.55, description: "Just an hot coffee mate", image: ""))
            

    }
}
