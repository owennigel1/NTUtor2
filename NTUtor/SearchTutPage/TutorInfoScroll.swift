//
//  TutorInfoScroll.swift
//  NTUtor
//

//  Created by Darrick Chew on 24/2/24.
//

import SwiftUI

struct person: Identifiable {
    var id = UUID()
    var name: String
    var tele: String
    var course: String
    var year: Int
    var grade: String
    var rate: String
    var pic: String
}

struct TutorInfoScroll: View {
    
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
        for i in 1..<name.count {
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
    
    var body: some View {
        NavigationView {
            VStack (spacing: 0) {
                ZStack {
                    Rectangle()
                        .fill(Color("AccentColor2"))
                        .frame(maxWidth: .infinity, maxHeight: 300)
                        .ignoresSafeArea()
                        .padding(-30)
                    
                    VStack {
                        NavigationLink (destination: LandingPage().navigationBarBackButtonHidden(true)) {
                            HStack{
                                Image(systemName: "magnifyingglass")
                                Text("Find a Tutor")
                                    .font(.system(size: 25, weight: .heavy, design: .default))
                            }
                            .padding()
                            .foregroundColor(.white)
                            .background(Color("AccentColor2"))
                            .cornerRadius(10)
                        }
                        
                        Text("SC1005 Digital Logic")
                            .frame(width: .infinity, height: 50, alignment: .leading)
                            .font(.custom("Arial", size : 30))
                            .foregroundColor(.white)
                            .shadow(radius: 20)
                        .bold()
                    }
                }

                ZStack{
                    Color(.white)
                    ScrollView (showsIndicators : false){
                        ForEach(tutorInfo) { info in
                            VStack(spacing: 20) {
                                DisplayTutors(name: info.name,
                                              tele: info.tele,
                                              course: info.course,
                                              year: info.year,
                                              grade: info.grade,
                                              rate: info.rate,
                                              pic: info.pic)
                            }
                            .padding(.bottom, 8)
                        }
                    }
                    .padding(20)
                }
                .frame(width:.infinity, height: 630)
                .cornerRadius(20)
            }
        }
    }
}

#Preview {
    TutorInfoScroll()
}

