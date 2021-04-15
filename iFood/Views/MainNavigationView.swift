//
//  MainNavigationView.swift
//  iFood
//
//  Created by Christopher Hicks on 4/15/21.
//

import SwiftUI

struct MainNavigationView: View {
    
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    
    var body: some View {
        
        
        NavigationView {
            
            List {
                
                ForEach(menu) { section in
                    Section(header: Text(section.name)) {
                        ForEach(section.items) { item in
                            ItemRowView(item: item)
                            
                        }
                    }
                }
            }
            .navigationBarTitle("Menu")
            .listStyle(SidebarListStyle())
            
        } // NavView
        .accentColor(Color(.systemGray))
    }
}

struct MainNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        MainNavigationView()
    }
}
