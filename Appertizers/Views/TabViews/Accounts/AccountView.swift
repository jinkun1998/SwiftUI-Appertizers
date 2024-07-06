//
//  AppertizersListView.swift
//  Appertizers
//
//  Created by Jin on 23/6/24.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var vm = AccountViewModel()
    
    var body: some View {
        NavigationView{
            Form{
                Section("personal info") {
                    TextField("First Name", text: $vm.user.firstName)
                    TextField("Last Name", text: $vm.user.lastName)
                    TextField("Email", text: $vm.user.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("Birthday", selection: $vm.user.birthDate, displayedComponents: .date)
                    Button(action: {
                        vm.saveChanges()
                    }, label: {
                        Text("Save Changes")
                    })
                }
                
                Section("requests"){
                    Toggle("Extra Napkins", isOn: $vm.user.extraNapkins)
                    Toggle("Frequent Refills", isOn: $vm.user.frequentRefills)
                }
            }
            .navigationBarTitle(Text("Account"))
        }
        .onAppear{
            vm.getUser()
        }
        .alert(item: $vm.alertItem) {alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.buttonTitle)
        }
    }
}

#Preview {
    AccountView()
}
