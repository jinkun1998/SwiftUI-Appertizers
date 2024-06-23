//
//  NetworkManager.swift
//  Appertizers
//
//  Created by Jin on 23/6/24.
//

import Foundation

final class NetworkManager{
    
    static let shared = NetworkManager()
    
    private init () {}

    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    static let appertizerURL = baseURL + "appetizers"
    
    func getAppertizers(completion: @escaping (Result<[Appertizer], NetworkError>) -> Void){
        
        guard let url = URL(string: NetworkManager.appertizerURL) else{
            completion(.failure(.invalidURL))
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, urlResponse, error in
            guard let _ = error else {
                completion(.failure(.hasError))
                return
            }
            
            guard urlResponse is HTTPURLResponse else{
                completion(.failure(.invalidResponse))
                return
            }
            
            guard let dataResponse = data else {
                completion(.failure(.invalidResponse))
                return
            }
            
            do{
                let decoder = JSONDecoder()
                let decodedData = try decoder.decode(AppertizerResponse.self, from: dataResponse)
                completion(.success(decodedData.request))
            }
            catch{
                completion(.failure(.invalidData))
            }
        }
        
        task.resume()
    }
}

enum NetworkError: Error{
    case invalidURL
    case invalidResponse
    case invalidData
    case hasError
}
