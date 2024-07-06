//
//  AppertizersListView.swift
//  Appertizers
//
//  Created by Jin on 23/6/24.
//

import SwiftUI

struct OrderView: View {
    
    @StateObject var vm = OrderViewModel()
    
    var body: some View {
        NavigationView{
            ZStack{
                if (vm.orders.isEmpty){
                    EmptyState()
                }else{
                    VStack{
                        List{
                            ForEach(vm.orders) {appertizer in
                                AppertizerListItemView(appertizer: appertizer)
                            }
                            .onDelete(perform: deleteItem)
                        }
                        .listStyle(.plain)
                        
                        Button{
                            print("placed")
                        } label: {
                            APButton(title: "$\(vm.orders.count, specifier: "%.2f") - Place Order")
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Order"))
        }
    }
    
    func deleteItem(at offsets: IndexSet){
        vm.orders.remove(atOffsets: offsets)
    }
}

#Preview {
    OrderView()
}
