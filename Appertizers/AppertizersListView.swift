//
//  AppertizersListView.swift
//  Appertizers
//
//  Created by Jin on 23/6/24.
//

import SwiftUI

struct AppertizersListView: View {
    var body: some View {
        NavigationView{
            List(MockData.sampleDataList, rowContent: { appertizer in
                AppertizerListItemView(appertizer: appertizer)
            })
            .navigationBarTitle(Text("Appertizers"))
        }
    }
}

#Preview {
    AppertizersListView()
}
