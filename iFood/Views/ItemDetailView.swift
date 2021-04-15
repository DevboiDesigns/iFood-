//
//  ItemDetailView.swift
//  iFood
//
//  Created by Christopher Hicks on 4/15/21.
//

import SwiftUI

struct ItemDetailView: View {
    
    var item: MenuItem
    
    var body: some View {
        
        VStack {
            Image(item.mainImage)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                .clipShape(RoundedRectangle(cornerRadius: 25.0))
                .padding()
            
            Text(item.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .navigationBarTitle(Text(item.name), displayMode: .inline)
        .padding()
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetailView(item: MenuItem.example)
    }
}
