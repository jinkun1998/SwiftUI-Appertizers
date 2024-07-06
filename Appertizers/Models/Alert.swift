//
//  Alert.swift
//  Appertizers
//
//  Created by Jin on 23/6/24.
//

import Foundation
import SwiftUI

struct AlertItem: Identifiable{
    let id = UUID()
    let title:Text
    let message:Text
    let buttonTitle: Alert.Button
}

final class AlertContext{
    
    static let ServerError = AlertItem(
        title: Text("Error"),
        message: Text("Server Error"),
        buttonTitle: .default(Text("OK"))
    )
    
    static let NoNetwork = AlertItem(
        title: Text("Error"),
        message: Text("No Network"),
        buttonTitle: .default(Text("OK"))
    )
    
    static let NoData = AlertItem(
        title: Text("Error"),
        message: Text("No Data"),
        buttonTitle: .default(Text("OK"))
    )
    
    static let InvalidData = AlertItem(
        title: Text("Error"),
        message: Text("Invalid Data"),
        buttonTitle: .default(Text("OK"))
    )
    
    // MARK: ACCOUNT
    static let InvalidForm = AlertItem(
        title: Text("Error"),
        message: Text("Invalid Form"),
        buttonTitle: .default(Text("OK"))
    )
    
    static let InvalidEmail = AlertItem(
        title: Text("Error"),
        message: Text("Invalid Email"),
        buttonTitle: .default(Text("OK"))
    )
    
    static let InvalidUser = AlertItem(
        title: Text("Error"),
        message: Text("Invalid User"),
        buttonTitle: .default(Text("OK"))
    )
    
    static let SuccessSave = AlertItem(
        title: Text("Success"),
        message: Text("Saved"),
        buttonTitle: .default(Text("OK"))
    )
}
