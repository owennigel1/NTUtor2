//
//  TutorProfileData.swift
//  NTUtor
//
//  Created by Owen Nigel on 25/2/24.
//

import Foundation

struct TutorData {
    var tutorInfo: [person]
    let name = ["Murtaza", "John", "Michael", "Darrick", "Rachel", "Bob"]
    let tele = ["murtazalover",  "johnnysuns", "m.angelo", "d_cjh",  "raeheehaw", "bobDeBuilder"]
    let course = ["EEE", "CS", "SSM", "CSC", "BCG", "EEE"]
    let year = [1, 2, 4, 1, 1, 3]
    let grade = ["A+", "B+", "A-", "A+", "A+", "B-"]
    let rate = ["$35/HR", "$5/HR", "$30/HR", "$20/HR", "$30/HR", "$40/HR"]
    let pic = ["MurtazaPic", "ProfilePic2", "ProfilePic3", "ProfilePic4", "ProfilePic5", "ProfilePic6"]
    let bio = ["""
               Murtaza, a diligent and driven university student, brings a blend of intellectual curiosity and cultural richness to campus life. Hailing from a vibrant background, his experiences have imbued him with a profound appreciation for diversity and a keen understanding of global perspectives.
               """,
    """
John, a dynamic presence on campus, exudes an aura of infectious enthusiasm and unwavering curiosity. With a perpetual twinkle in his eye, he approaches every academic challenge with a blend of determination and joy, inspiring his peers to embrace learning with newfound fervor.
""",
    """
Michael, the quintessential university student, possesses an understated charm and quiet intelligence that belies his unassuming demeanor. Often found lost in thought amidst the hustle and bustle of campus life, he approaches his studies with a meticulous attention to detail and a dedication to excellence.
""", """
Darrick, a charismatic presence on campus, combines effortless charm with a sharp intellect. With a magnetic personality that draws others in, he navigates university life with confidence and ease. Whether dazzling in debates or leading student organizations, Darrick's natural leadership and quick wit make him a standout figure in the university community.
""", """
Rachel, a beacon of intellect and grace, captivates those around her with her quiet confidence and unwavering determination. With a keen eye for detail and a passion for academia, she navigates the university landscape with poise and purpose.
""", """
Bob, a laid-back and affable presence on campus, navigates university life with an easygoing charm. With a knack for making friends wherever he goes, he brings a sense of warmth and camaraderie to every interaction.
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
    ]
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