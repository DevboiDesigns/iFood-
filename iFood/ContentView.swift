//
//  ContentView.swift
//  iFood
//
//  Created by Christopher Hicks on 4/15/21.
//

import SwiftUI

struct ContentView: View {
    
//    @EnvironmentObject var order: Order
    
    var body: some View {
        TabView {
            MainNavigationView()
                .tabItem { Image(systemName: "list.dash")
                    Text("Menu")
                }
            CheckoutView()
                .tabItem { Image(systemName: "square.and.pencil")
                    Text("Order")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static let order = Order()
    static var previews: some View {
        ContentView().environmentObject(order)
    }
}
