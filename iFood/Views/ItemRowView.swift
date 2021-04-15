//
//  ItemRowView.swift
//  iFood
//
//  Created by Christopher Hicks on 4/15/21.
//

import SwiftUI

struct ItemRowView: View {
    
    let item: MenuItem
    
    var body: some View {
        
        NavigationLink(
            destination: ItemDetailView(item: item),
            label: {
                HStack {
                    Image(item.mainImage)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                        .frame(width: 100, height: 100)
                    
                    VStack(alignment: .leading) {
                        Text(item.name)
                            .font(.headline)
                        Text(String("$\(item.price)"))
                            .foregroundColor(.secondary)
                    }
                }
                
            })
        
        
        
    }
}

struct ItemRowView_Previews: PreviewProvider {
    static var previews: some View {
        ItemRowView(item: MenuItem.example)
    }
}
