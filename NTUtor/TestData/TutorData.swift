//
//  TutorProfileData.swift
//  NTUtor
//
//  Created by Owen Nigel on 25/2/24.
//

import Foundation

struct TutorData {
    var tutorInfo: [person]
    let name = ["Murtaza", "John", "Michael", "Darrick", "Rachel", "Bob", "Marco"]
    let tele = ["murtazalover",  "johnnysuns", "m.angelo", "d_cjh",  "raeheehaw", "bobDeBuilder", "marcoriri"]
    let course = ["EEE", "CSC", "SSM", "CSC", "BCG", "EEE", "CEE"]
    let year = [1, 2, 4, 1, 1, 3, 2]
    let grade = ["A+", "B+", "A-", "A+", "A+", "B-", "A+"]
    let rate = ["$35/HR", "$5/HR", "$30/HR", "$20/HR", "$30/HR", "$40/HR", "$30/HR"]
    let pic = ["MurtazaPic", "ProfilePic2", "ProfilePic3", "ProfilePic4", "RaeNae", "ProfilePic6","MarcoPic"]
    let bio = ["""
               Murtaza, a diligent and driven university student, brings a blend of intellectual curiosity and cultural richness to campus life.
               """,
    """
John, a dynamic presence on campus, exudes an aura of infectious enthusiasm and unwavering curiosity.
""",
    """
Michael, the quintessential university student, possesses an understated charm and quiet intelligence that belies his unassuming demeanor.
""", """
Darrick, a charismatic presence on campus, combines effortless charm with a sharp intellect. With a magnetic personality that draws others in, he navigates university life with confidence and ease.
""", """
Rachel, a beacon of intellect and grace, captivates those around her with her quiet confidence and unwavering determination.
""", """
Bob, a laid-back and affable presence on campus, navigates university life with an easygoing charm. 
""","""
Marco, a dynamic and outgoing figure on campus, embodies the spirit of adventure and exploration. With a perpetual zest for life, he thrives in the university environment, seizing every opportunity to engage with new ideas and experiences.
"""]
    let date_available = [
        [
        "17 Jan 2024 | 13:00",
        "19 Jan 2024 | 09:00",
        "20 Jan 2024 | 14:00",
    ],
        [
        "11 Jan 2024 | 15:00",
        "13 Jan 2024 | 16:00",
        "14 Jan 2024 | 11:00",
        "20 Jan 2024 | 12:00",
    ],
        [
        "11 Jan 2024 | 10:00"
    ],
        [
        "18 Jan 2024 | 12:00",
        "19 Jan 2024 | 09:00",
    ],
        [
        "14 Jan 2024 | 11:00",
        "13 Jan 2024 | 12:00",
        "17 Jan 2024 | 10:00",
    ],
        [
        "15 Jan 2024 | 16:00",
        "14 Jan 2024 | 12:00",
        "19 Jan 2024 | 09:00",
    ],
        [
        "11 Jan 2024 | 11:00",
        "12 Jan 2024 | 13:00",
    ],
    ]

    init() {
        var tempInfo = [person]()
        for i in 0..<name.count {
            tempInfo.append(person(name: name[i],
                                    tele: tele[i],
                                    course: course[i],
                                    year: year[i],
                                    grade: grade[i],
                                    rate: rate[i],
                                    pic: pic[i],
                                   bio: bio[i],
                                  date_available: date_available[i]))
        }
        tutorInfo = tempInfo
    }
}
