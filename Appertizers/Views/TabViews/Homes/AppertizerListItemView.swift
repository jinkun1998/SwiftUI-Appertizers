//
//  AppertizerListItemView.swift
//  Appertizers
//
//  Created by Jin on 23/6/24.
//

import SwiftUI

struct AppertizerListItemView: View {
    
    let appertizer: Appertizer
    
    var body: some View {
        HStack{
//            RemoteImageView(imageURL: appertizer.imageURL)
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 100, height: 80)
            
            AsyncImage(url: URL(string: appertizer.imageURL)) { image in
                image
                    .useImageThumbnailStyle(100, 100)
            } placeholder: {
                Image("emptyFood")
                    .useImageThumbnailStyle(100, 100)
                
            }

            
            VStack (alignment: .leading, spacing: 5) {
                Text(appertizer.name)
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Text("$\(appertizer.price, specifier: "%.2f")")
                    .font(.body)
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    AppertizerListItemView(appertizer: MockData.sampleData)
}
