//
//  RemoteImageView.swift
//  Appertizers
//
//  Created by Jin on 23/6/24.
//

import SwiftUI

struct RemoteImageView: View {
    
    @StateObject var vm = RemoteImageViewModel()
    var imageURL: String
    
    var body: some View {
        HStack{
            vm.image?
                .resizable()
            ?? Image(systemName: "fork.knife.circle.fill")
                .resizable()
                .symbolRenderingMode(.hierarchical)
        }
        .onAppear{
            vm.loadImage(fromURLString: imageURL)
        }
    }
}

#Preview {
    RemoteImageView(imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/asian-flank-steak.jpg")
}
