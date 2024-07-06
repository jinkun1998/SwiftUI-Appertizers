//
//  XButton.swift
//  Appertizers
//
//  Created by Jin on 6/7/24.
//

import SwiftUI

struct XButton: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 30, height: 30)
                .foregroundColor(.white)
                .opacity(0.6)
            
            Image(systemName: "xmark")
                .imageScale(.small)
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.black)
                .frame(width: 40, height: 40)
        }
    }
}

#Preview {
    XButton()
}
