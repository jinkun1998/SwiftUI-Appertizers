//
//  AppertizerDetailView.swift
//  Appertizers
//
//  Created by Jin on 6/7/24.
//

import SwiftUI

struct AppertizerDetailView: View {
    
    @EnvironmentObject var order: Order
    let appertizer: Appertizer
    @Binding var isShowDetailView: Bool
    
    var body: some View {
        VStack{
            // image
            RemoteImageView(imageURL: appertizer.imageURL)
                .aspectRatio(contentMode: .fill)
                .frame(width: 320, height: 250)
            
            // title + description
            VStack(spacing: 20) {
                Text(appertizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                
                Text(appertizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .foregroundColor(.black)
                                   
                HStack(spacing: 40){
                    AppertizerNutritionView(title: "Calories", value: appertizer.calories)
                    AppertizerNutritionView(title: "Carbs", value: appertizer.carbs)
                    AppertizerNutritionView(title: "Protein", value: appertizer.protein)
                }
            }
            .frame(width: 300)
            
            Spacer()
            
            // button
            Button(action: {
                order.add(appertizer)
                isShowDetailView = false
            }, label: {
                Text("$\(appertizer.price,specifier: "%.2f") - Add to Order")
            })
            .modifier(StandardButtonStyle())
            .padding(.bottom, 20)
        }
        .frame(width: 320, height: 550)
        .background(.white)
        .cornerRadius(15)
        .shadow(radius: 20)
        .overlay(alignment: .topTrailing, content: {
            Button(action: {
                isShowDetailView = false
            }, label: {
                XButton()
            })
        })
    }
}

#Preview {
    AppertizerDetailView(appertizer: MockData.sampleData, isShowDetailView: .constant(true))
}
