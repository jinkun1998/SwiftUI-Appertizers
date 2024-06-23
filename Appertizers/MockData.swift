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
        name: "Name",
        description: "Descripton",
        calories: 1,
        protein: 1,
        carbs: 1,
        price: 1.11,
        imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/asian-flank-steak.jpg"
    )
    
    static let sampleDataList: [Appertizer] = [
        sampleData,
        sampleData,
        sampleData,
        sampleData
    ]
}
