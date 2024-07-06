//
//  APButton.swift
//  Appertizers
//
//  Created by Jin on 6/7/24.
//

import SwiftUI

struct APButton: View {
    
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .frame(width: 250, height: 50)
            .background(Color.green)
            .cornerRadius(10)
            .padding(.bottom, 35)
    }
}

#Preview {
    APButton(title: "This is title")
}
