//
//  OrderViewModel.swift
//  Appertizers
//
//  Created by Jin on 6/7/24.
//

import Foundation

final class OrderViewModel : ObservableObject{
    
    @Published var orders: [Appertizer] = MockData.sampleDataList
    
}
