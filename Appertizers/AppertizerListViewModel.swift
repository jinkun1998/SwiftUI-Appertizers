//
//  AppertizerListViewModel.swift
//  Appertizers
//
//  Created by Jin on 23/6/24.
//

import Foundation

final class AppertizerListViewModel: ObservableObject {
    
    @Published var appertizers: [Appertizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading: Bool = true
    
    func getAppertizers() {
        
        NetworkManager.shared.getAppertizers { result in
            // all actions must running on background thread to prevent freeze UI
            DispatchQueue.main.async {
                switch result{
                case .success(let appertizers):
                    self.appertizers = appertizers
                    self.isLoading = false
                case .failure(let error):
                    switch error {
                    case .hasError:
                        self.alertItem = AlertContext.ServerError
                    case .invalidURL:
                        self.alertItem = AlertContext.NoNetwork
                    case .invalidResponse:
                        self.alertItem = AlertContext.InvalidData
                    case .invalidData:
                        self.alertItem = AlertContext.NoData
                    }
                }
            }
        }
    }
}
