//
//  AccountViewModel.swift
//  Appertizers
//
//  Created by Jin on 6/7/24.
//

import Foundation

final class AccountViewModel: ObservableObject{
    
    @Published var firstName:String = ""
    @Published var lastName:String = ""
    @Published var email:String = ""
    @Published var birthDate:Date = Date()
    
    @Published var extraNapkins:Bool = false
    @Published var frequentRefills:Bool = false
    
    @Published var alertItem: AlertItem?
    
    var isValid: Bool{
        guard !firstName.isEmpty, !lastName.isEmpty, !email.isEmpty  else {
            alertItem = AlertContext.InvalidForm
            return false
        }
        return true
    }
    
    var isValidEmail: Bool{
        guard email.isValidEmail() else {
            alertItem = AlertContext.InvalidEmail
            return false
        }
        return true
    }
    
    func saveChanges(){
        
        guard isValid, isValidEmail else {return}
        
        print("saved")
    }
}
