//
//  CheckoutOrderView.swift
//  iFood
//
//  Created by Christopher Hicks on 4/15/21.
//

import SwiftUI



struct CheckoutOrderView: View {
    
    static let paymentTypes = ["Cash", "Credit Card", "Credit Points"]
    
    @EnvironmentObject var order: Order
    
    @State private var paymentType = 0
    
    var body: some View {
        
        VStack {
            
            Section {
                Picker("How would you like to Pay?", selection: $paymentType) {
                    
                    ForEach(0 ..< Self.paymentTypes.count) {
                        
                        Text(Self.paymentTypes[$0])
                    }
                }
            }
        }
        .navigationBarTitle("Payment", displayMode: .inline)
    }
}

struct CheckoutOrderView_Previews: PreviewProvider {
    static let order = Order()
    static var previews: some View {
        CheckoutOrderView().environmentObject(order)
    }
}
