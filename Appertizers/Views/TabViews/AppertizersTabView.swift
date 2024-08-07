//
//  ContentView.swift
//  Appertizers
//
//  Created by Jin on 23/6/24.
//

import SwiftUI

struct AppertizersTabView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        TabView{
            AppertizersListView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            
            AccountView()
                .tabItem {
                    Label("Account", systemImage: "person.crop.circle.fill")
                }
            
            OrderView()
                .tabItem {
                    Label("Order", systemImage: "bag.fill")
                }
                .badge(order.orders.count)
        }
    }
}

#Preview {
    AppertizersTabView()
}
