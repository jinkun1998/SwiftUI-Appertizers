//
//  Appertizer.swift
//  Appertizers
//
//  Created by Jin on 23/6/24.
//

import Foundation

struct Appertizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let calories: Int
    let protein: Int
    let carbs: Int
    let price: Double
    let imageURL: String
}


struct AppertizerResponse: Decodable{
    let request: [Appertizer]
}
