//
//  User.swift
//  Appertizers
//
//  Created by Jin on 6/7/24.
//

import Foundation

struct User: Codable{
    var firstName:String = ""
    var lastName:String = ""
    var email:String = ""
    var birthDate:Date = Date()
    var extraNapkins:Bool = false
    var frequentRefills:Bool = false
}
