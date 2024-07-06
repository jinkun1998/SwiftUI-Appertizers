//
//  MockData.swift
//  Appertizers
//
//  Created by Jin on 23/6/24.
//

import Foundation

struct MockData {
    
    static let sampleData = Appertizer(
        id: 1,
        name: "Name  Name  Name Name  Name  Name",
        description: "Descripton Descripton Descripton Descripton Descripton Descripton Descripton Descripton Descripton Descripton Descripton Descripton",
        calories: 99,
        protein: 99,
        carbs: 99,
        price: 99.99,
        imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/asian-flank-steak.jpg"
//        imageURL: "sampleImage"
    )
    
    static let sampleDataList: [Appertizer] = [
        sampleData,
        sampleData,
        sampleData,
        sampleData
    ]
}
