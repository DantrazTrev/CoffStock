//
//  MenuPage.swift
//  Coffstock
//
//  Created by Ayush Pratap Singh on 02/05/22.
//

import SwiftUI

struct MenuPage: View {
    @EnvironmentObject var menuManager: MenuManager
    @State var search: String = ""
    var body: some View {
        NavigationView{
            VStack{
            List{
                ForEach(menuManager.menu) { category in
                    if category.filteredItems(text: search).count > 0 {
                        Text(category.name)
                            .frame( maxWidth:.infinity,alignment:.leading)
                            .font(.headline)
                            .foregroundColor(Color("Secondary"))
                      
                    }
                    
                    ForEach(category.filteredItems(text: search)) { item in
                        ZStack {
                            NavigationLink(destination: Details(product: item)) {
                                EmptyView()
                            }.opacity(0)
                            Item(product: item)
                                .padding(.top)
                                .padding(.leading)
                                .padding(.bottom, 10)

                        }
                        
                    }
                }
                .searchable(text: $search)
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
            .environmentObject(LikesManager())
    }
}
