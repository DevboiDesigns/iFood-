//
//  iFoodApp.swift
//  iFood
//
//  Created by Christopher Hicks on 4/15/21.
//

import SwiftUI

@main
struct iFoodApp: App {
    @StateObject var order: Order = Order()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(order)
        }
    }
}
