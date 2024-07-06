//
//  EmptyState.swift
//  Appertizers
//
//  Created by Jin on 6/7/24.
//

import SwiftUI

struct EmptyState: View {
    
    let imageName: String = "emptyState"
    let description: String = "There is no order item here."
    
    var body: some View {
        VStack{
            Image(imageName)
                .resizable()
                .scaledToFit()
            
            Text(description)
                .font(.body)
                .fontWeight(.semibold)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
        }
        .frame(width: 250, height: 250)
        .offset(y: -50)
    }
}

#Preview {
    EmptyState()
}
