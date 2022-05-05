//
//  MenuPage.swift
//  Coffstock
//
//  Created by Ayush Pratap Singh on 02/05/22.
//

import SwiftUI

struct MenuPage: View {
    @EnvironmentObject var menuManager: MenuManager
    
    var body: some View {
        NavigationView{
            VStack{
            List{
                ForEach(menuManager.menu) { category in
                    Text(category.name)
                    ForEach(category.products){product in
                        NavigationLink {
                            Details(product:product)
                        } label: {
                            Item(product:product)
                        }

                        
                    }

                    }
                .listRowBackground(Color.clear)
                .listRowSeparator(.hidden)
            }.navigationTitle("Products")
        }
       
        }
    }
}

struct MenuPage_Previews: PreviewProvider {
    static var previews: some View {
        MenuPage().environmentObject(MenuManager())
    }
}
