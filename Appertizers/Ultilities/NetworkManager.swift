//
//  NetworkManager.swift
//  Appertizers
//
//  Created by Jin on 23/6/24.
//

import Foundation
import UIKit

final class NetworkManager{
    
    static let shared = NetworkManager()
    private let cache = NSCache<NSString, UIImage>()
    
    private init () {}
    
    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    static let appertizerURL = baseURL + "appetizers"
    
//    func getAppertizers(completion: @escaping (Result<[Appertizer], NetworkError>) -> Void){
//        
//        guard let url = URL(string: NetworkManager.appertizerURL) else{
//            completion(.failure(.invalidURL))
//            return
//        }
//        
//        let task = URLSession.shared.dataTask(with: url) { data, urlResponse, error in
//            if let _ = error {
//                completion(.failure(.hasError))
//                return
//            }
//            
//            guard let urlResponse = urlResponse as? HTTPURLResponse, urlResponse.statusCode == 200 else{
//                completion(.failure(.invalidResponse))
//                return
//            }
//            
//            guard let dataResponse = data else {
//                completion(.failure(.invalidResponse))
//                return
//            }
//            
//            do{
//                let decoder = JSONDecoder()
//                let decodedData = try decoder.decode(AppertizerResponse.self, from: dataResponse)
//                completion(.success(decodedData.request))
//            }
//            catch{
//                completion(.failure(.invalidData))
//            }
//        }
//        
//        task.resume()
//    }
    
    func getAppertizers() async throws -> [Appertizer]{
        
        guard let url = URL(string: NetworkManager.appertizerURL) else{
            throw NetworkError.invalidURL
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        
        do{
            return try JSONDecoder().decode(AppertizerResponse.self, from: data).request
        }
        catch{
            throw NetworkError.invalidData
        }
    }
    
    func downloadImage(fromURLString: String,completion: @escaping (UIImage?) -> Void){
        guard let url = URL(string: fromURLString) else{
            completion(nil)
            return
        }
        
        if let cachedImage = self.cache.object(forKey: NSString(string: fromURLString)){
            completion(cachedImage)
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, urlResponse, error in
            guard let data = data, let image = UIImage(data: data) else{
                completion(nil)
                return
            }
            
            self.cache.setObject(image, forKey: NSString(string: fromURLString))
            completion(image)
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
