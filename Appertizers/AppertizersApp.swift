//
//  AppertizersApp.swift
//  Appertizers
//
//  Created by Jin on 23/6/24.
//

import SwiftUI

@main
struct AppertizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppertizersTabView()
                .environmentObject(order)
        }
    }
}
