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
                    
                    VStack {
                        NavigationLink (destination: LandingPage().navigationBarBackButtonHidden(true)) {
                            HStack{
                                Image(systemName: "arrowshape.turn.up.left.fill")
                                Text("Back")
                                    .font(.system(size: 25, weight: .medium, design: .default))
                                Spacer()
                            }
                            .padding()
                            .foregroundColor(.white)
                            .background(Color("AccentColor2"))
                            .cornerRadius(10)
                        }
                        Spacer()
                        
                        HStack {
                            Text("SC1005 Digital Logic")
                                .frame(width: .infinity, height: 50, alignment: .leading)
                                .font(.custom("Arial", size : 25))
                                .foregroundColor(.white)
                                .shadow(radius: 20)
                            .bold()
                            Spacer()
                        }.padding(.leading)
                    }
                }

                ZStack{
                    Color(.white)
                    ScrollView (showsIndicators : false){
                        ForEach(TutorData().tutorInfo) { info in
                            VStack(spacing: 20) {
                                NavigationLink (destination: TutDescriptionPageView().navigationBarBackButtonHidden(true)) {
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


