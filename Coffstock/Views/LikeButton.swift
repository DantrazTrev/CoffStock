//
//  LikeButton.swift
//  Coffstock
//
//  Created by Ayush Pratap Singh on 05/05/22.
//

import SwiftUI

struct LikeButton: View {
    @EnvironmentObject var likesManager: LikesManager
    
    var product: Product
    
    var body: some View {
        Image(systemName: likesManager.isLiked(id: product.id) ? "heart.fill" : "heart")
            .padding()
            .foregroundColor(Color("Secondary"))
            .accessibilityLabel(likesManager.isLiked(id: product.id) ? "Dislike" : "Like")
            .onTapGesture {
                likesManager.toggle(product.id)
            }
    }
}

struct LikeButton_Previews: PreviewProvider {
    static var previews: some View {
        LikeButton(product:Product(id: 1, name: "Coffee", price: 2.55, description: "Just an hot coffee mate", image: "")).environmentObject(LikesManager())
    }
}
