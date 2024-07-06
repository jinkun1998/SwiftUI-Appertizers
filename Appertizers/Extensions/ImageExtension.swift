//
//  ImageExtension.swift
//  Appertizers
//
//  Created by Jin on 6/7/24.
//

import Foundation
import SwiftUI

extension Image{
    func useImageThumbnailStyle(_ witdth: CGFloat, _ height: CGFloat) -> some View{
        self
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: witdth, height: height)
            .cornerRadius(5)
    }
}

