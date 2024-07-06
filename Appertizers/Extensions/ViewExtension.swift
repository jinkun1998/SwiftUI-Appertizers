//
//  ViewExtension.swift
//  Appertizers
//
//  Created by Jin on 6/7/24.
//

import Foundation
import SwiftUI

extension View{
    
    func standardImageModifier() -> some View{
        self.modifier(StandardImageStyle())
    }
}
