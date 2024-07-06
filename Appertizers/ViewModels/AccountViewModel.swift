//
//  AccountViewModel.swift
//  Appertizers
//
//  Created by Jin on 6/7/24.
//

import Foundation
import SwiftUI

final class AccountViewModel: ObservableObject{
    
    @AppStorage("user") var userData: Data?
    
    @Published var user = User()
    
    @Published var alertItem: AlertItem?
    
    var isValidForm: Bool{
        guard !user.firstName.isEmpty, !user.lastName.isEmpty, !user.email.isEmpty  else {
            alertItem = AlertContext.InvalidForm
            return false
        }
        
        guard user.email.isValidEmail() else {
            alertItem = AlertContext.InvalidEmail
            return false
        }
        
        return true
    }
    
    func getUser(){
        guard let userData = userData else {return}
        
        do{
            let data = try JSONDecoder().decode(User.self, from: userData)
            user = data
        }
        catch{
            alertItem = AlertContext.InvalidUser
        }
    }
    
    func saveChanges(){
        guard isValidForm else {return}
        
        do{
            let data = try JSONEncoder().encode(user)
            userData = data
            alertItem = AlertContext.SuccessSave
        }catch{
            alertItem = AlertContext.InvalidUser
        }
    }
}
