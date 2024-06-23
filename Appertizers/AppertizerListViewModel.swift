//
//  AppertizerListViewModel.swift
//  Appertizers
//
//  Created by Jin on 23/6/24.
//

import Foundation

final class AppertizerListViewModel: ObservableObject {
    
    @Published var appertizers: [Appertizer] = []
    
    func getAppertizers() {
        
        NetworkManager.shared.getAppertizers { result in
            // all actions must running on background thread to prevent freeze UI
            DispatchQueue.main.async {
                switch result{
                case .success(let appertizers):
                    self.appertizers = appertizers
                case .failure(let error):
                    print("Error: \(error.localizedDescription)")
                }
            }
        }
    }
}
