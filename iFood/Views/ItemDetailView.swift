//
//  ItemDetailView.swift
//  iFood
//
//  Created by Christopher Hicks on 4/15/21.
//

import SwiftUI

struct ItemDetailView: View {
    
    @EnvironmentObject var order: Order
    
    var item: MenuItem
    
    var body: some View {
        
        VStack {
            HStack {
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    .padding()
                
                Text(item.description)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            
            Button(action: {
                self.order.add(item: self.item)
                
            }, label: {
                Text("Order This")
                    .font(.headline)
                    
            })
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.black)
            .foregroundColor(.white)
            
            //Spacer()
            
            VStack {
                Section(header: Text("Benefits")) {
                    
                }
                .font(.title)
                .offset(x: -120, y: 20)
                .foregroundColor(.secondary)
                
                Spacer()
                    .frame(height: 100)
                
                ScrollView(.horizontal) {
                    HStack(spacing: 20) {       // if an array 
                        ForEach(item.benefits, id: \.self) { benefit in
                            Image(benefit)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .frame(width: 150, height: 150)
                        }
                    } // HStack
                    .padding()
                }
            }
        Spacer()
            
        }
        .navigationBarTitle(Text(item.name), displayMode: .inline)
        
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var order = Order()
    static var previews: some View {
        NavigationView {
            ItemDetailView(item: MenuItem.example).environmentObject(order)
        }
    }
}
