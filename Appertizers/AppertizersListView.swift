//
//  AppertizersListView.swift
//  Appertizers
//
//  Created by Jin on 23/6/24.
//

import SwiftUI

struct AppertizersListView: View {
    
    @StateObject var vm = AppertizerListViewModel()
    
    var body: some View {
        NavigationView{
            List(vm.appertizers, rowContent: { appertizer in
                AppertizerListItemView(appertizer: appertizer)
            })
            .navigationBarTitle(Text("Appertizers"))
        }
        .onAppear {
            vm.getAppertizers()
        }
    }
}

#Preview {
    AppertizersListView()
}
