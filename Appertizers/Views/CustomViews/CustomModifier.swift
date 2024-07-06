//
//  CustomModifier.swift
//  Appertizers
//
//  Created by Jin on 6/7/24.
//

import Foundation
import SwiftUI

struct StandardButtonStyle: ViewModifier{
    
    func body(content: Content) -> some View{
        content
            .buttonStyle(.bordered)
            .controlSize(.large)
            .tint(.accentColor)
    }
}
