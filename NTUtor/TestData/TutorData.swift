//
//  TutorProfileData.swift
//  NTUtor
//
//  Created by Owen Nigel on 25/2/24.
//

import Foundation

struct TutorData {
    var tutorInfo: [person]
    let name = ["Owen", "John", "Michael", "Darrick", "Rachel", "Bob"]
    let tele = ["owennigel",  "johnnysins", "m.angelo", "d_cjh",  "raeheehaw", "bobDeBuilder"]
    let course = ["BCG", "CS", "SSM", "CSC", "BCG", "EEE"]
    let year = [1, 2, 4, 1, 1, 3]
    let grade = ["A+", "B+", "A-", "A+", "A+", "B-"]
    let rate = ["$15/HR", "$5/HR", "$30/HR", "$20/HR", "$30/HR", "$40/HR"]
    let pic = ["ProfilePic", "ProfilePic2", "ProfilePic3", "ProfilePic4", "ProfilePic5", "ProfilePic6"]

    init() {
        var tempInfo = [person]()
        for i in 0..<name.count {
            tempInfo.append(person(name: name[i],
                                    tele: tele[i],
                                    course: course[i],
                                    year: year[i],
                                    grade: grade[i],
                                    rate: rate[i],
                                    pic: pic[i]))
        }
        tutorInfo = tempInfo
    }
}
