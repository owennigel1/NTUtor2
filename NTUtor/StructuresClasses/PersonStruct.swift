//
//  PersonStruct.swift
//  NTUtor
//
//  Created by Owen Nigel on 25/2/24.
//

import Foundation

struct person: Identifiable {
    var id = UUID()
    var name: String
    var tele: String
    var course: String
    var year: Int
    var grade: String
    var rate: String
    var pic: String
    var bio: String
    var date_available : [String]
}
