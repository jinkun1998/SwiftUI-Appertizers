//
//  RemoteImageViewModel.swift
//  Appertizers
//
//  Created by Jin on 23/6/24.
//

import UIKit
import SwiftUI

final class RemoteImageViewModel: ObservableObject{
    
    @Published var image: Image?
    
    func loadImage(fromURLString: String){
        NetworkManager.shared.downloadImage(fromURLString: fromURLString, completion: { uiImage in
            guard let uiImage = uiImage else {return}
            DispatchQueue.main.async {
                self.image = Image(uiImage: uiImage)
            }
        })
    }
}
