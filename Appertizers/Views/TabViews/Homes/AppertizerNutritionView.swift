//
//  AppertizerNutritionView.swift
//  Appertizers
//
//  Created by Jin on 6/7/24.
//

import SwiftUI

struct AppertizerNutritionView: View {
    
    let title: String
    let value: Int
    
    var body: some View {
        VStack{
            Text(title)
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(.black)
            
            Text("\(value)")
                .font(.caption)
                .fontWeight(.semibold)
                .foregroundColor(.black)
                .italic()
        }
    }
}

#Preview {
    AppertizerNutritionView(title: "Test", value: 99)
}
