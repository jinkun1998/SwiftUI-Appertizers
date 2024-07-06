//
//  AppertizersListView.swift
//  Appertizers
//
//  Created by Jin on 23/6/24.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView{
            ZStack{
                if (order.orders.isEmpty){
                    EmptyState()
                }else{
                    VStack{
                        List{
                            ForEach(order.orders) {appertizer in
                                AppertizerListItemView(appertizer: appertizer)
                            }
                            .onDelete(perform: order.delete)
                        }
                        .listStyle(.plain)
                        
                        Button{
                            print("placed")
                        } label: {
                            Text("$\(order.totalPrice, specifier: "%.2f") - Place Order")
                        }
                        .modifier(StandardButtonStyle())
                        .padding(.bottom, 30)
                    }
                }
            }
            .navigationBarTitle(Text("Order"))
        }
    }
}

#Preview {
    OrderView()
}
