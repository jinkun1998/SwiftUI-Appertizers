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
        
        ZStack{
            NavigationView{
                if (vm.isLoading){
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                        .controlSize(.extraLarge)
                }
                else{
                    List(vm.appertizers, rowContent: { appertizer in
                        AppertizerListItemView(appertizer: appertizer)
                            .onTapGesture {
                                vm.isShowDetailView = true
                                vm.selectedAppertizer = appertizer
                            }
                    })
                    .navigationBarTitle(Text("Appertizers"))
                    .disabled(vm.isShowDetailView)
                }
            }
            .onAppear {
                vm.getAppertizers()
            }
            .alert(item: $vm.alertItem) { alertItem in
                Alert(
                    title: alertItem.title,
                    message: alertItem.message,
                    dismissButton: alertItem.buttonTitle
                )
            }
            .blur(radius: vm.isShowDetailView ? 20 : 0)
            
            if (vm.isShowDetailView){
                AppertizerDetailView(
                    appertizer: vm.selectedAppertizer!,
                    isShowDetailView: $vm.isShowDetailView)
            }
        }
    }
}

#Preview {
    AppertizersListView()
}
