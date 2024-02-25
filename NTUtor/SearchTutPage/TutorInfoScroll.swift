//
//  TutorInfoScroll.swift
//  NTUtor
//

//  Created by Darrick Chew on 24/2/24.
//

import SwiftUI

struct TutorInfoScroll: View {
    
    var body: some View {
        NavigationView {
            VStack (spacing: 0) {
                ZStack {
                    Rectangle()
                        .fill(Color("AccentColor2"))
                        .frame(maxWidth: .infinity, maxHeight: 300)
                        .ignoresSafeArea()
                        .padding(-30)
                    
                    
                    NavigationLink (destination: LandingPage().navigationBarBackButtonHidden(true)) {
                        HStack {
                            Image(systemName: "chevron.left")
                                .foregroundColor(.white)
                                .bold()
                            Text("Tutors")
                                .frame(width: UIScreen.main.bounds.width, height: 50, alignment: .leading)
                                .font(.custom("Arial", size : 25))
                                .foregroundColor(.white)
                                .shadow(radius: 20)
                                .bold()
                        }
                        .padding(.leading, 35)
                    }
                    .offset(y:-5)
                }

                ZStack{
                    Color(.white)
                    ScrollView (showsIndicators : false){
                        ForEach(TutorData().tutorInfo) { info in
                            VStack(spacing: 20) {
                                NavigationLink (destination: TutDescriptionPageView(name: info.name,
                                                                                    tele: info.tele,
                                                                                    course: info.course,
                                                                                    year: info.year,
                                                                                    grade: info.grade,
                                                                                    rate: info.rate,
                                                                                    pic: info.pic,
                                                                                    bio:info.bio,
                                                                                    date_available: info.date_available).navigationBarBackButtonHidden(true)) {
                                    DisplayTutors(name: info.name,
                                                  tele: info.tele,
                                                  course: info.course,
                                                  year: info.year,
                                                  grade: info.grade,
                                                  rate: info.rate,
                                                  pic: info.pic)
                                }
                                .padding(.bottom, 8)
                                .foregroundColor(.black)
                                
                            }
                        }
                    }
                    .padding(15)
                    .padding(.bottom, 35)
                }
                .frame(width: UIScreen.main.bounds.width, height: 710)
                .cornerRadius(20)
            }
        }
    }
}

#Preview {
    TutorInfoScroll()
}


