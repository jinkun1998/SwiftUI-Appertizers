//
//  Order.swift
//  Appertizers
//
//  Created by Jin on 6/7/24.
//

import Foundation

final class Order: ObservableObject{
    
    @Published var orders: [Appertizer] = []
    
    var totalPrice: Double{
        return orders.reduce(0) { partialResult, appertizer in
            return partialResult + appertizer.price
        }
    }
    
    func add(_ appertizer: Appertizer){
        orders.append(appertizer)
    }
    
    func delete(at offsets: IndexSet){
        orders.remove(atOffsets: offsets)
    }
}
