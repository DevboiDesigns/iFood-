//
//  CheckoutView.swift
//  iFood
//
//  Created by Christopher Hicks on 4/15/21.
//

import SwiftUI

struct CheckoutView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        
        NavigationView {
            List {
                Section {
                    ForEach(order.items) { item in
                        HStack {
                            Image(item.mainImage)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .frame(width: 100, height: 100)
                            
                            Text(item.name)
                            Spacer()
                            Text("$\(item.price)")
                                .foregroundColor(.secondary)
                        }
                    }
                }
                
                Section {
                    NavigationLink(
                        destination: CheckoutView()) {
                        Text("Place Your Order")
                    }
                        
                }
            }
            .navigationBarTitle("Your Order")
            .listStyle(GroupedListStyle())
        }
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static let order = Order()
    static var previews: some View {
        CheckoutView().environmentObject(order)
    }
}
