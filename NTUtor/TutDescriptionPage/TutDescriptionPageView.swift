//
//  TutDescriptionPageView.swift
//  NTUtor
//
//  Created by Owen Nigel on 24/2/24.
//

import SwiftUI

struct TutDescriptionPageView: View {
    var body: some View {
        NavigationView {
            VStack{
                NavigationLink (destination: TutorInfoScroll().navigationBarBackButtonHidden(true)) {
                    HStack{
                        Image(systemName: "chevron.left")
                            .foregroundColor(.black)
                            .bold()
                        Text("Tutor's Information")
                            .font(.system(size: 25, weight: .heavy, design: .default))
                            .foregroundColor(.black)
                    }
                }
                .offset(x: -50)
                
                DisplayTutors(name: "Owen",
                              tele: "owennigel",
                              course: "BCG",
                              year : 1,
                              grade: "A+",
                              rate: "$10/HR",
                              pic: "ProfilePic")
                .padding(.bottom, 20)
                
                BioView()
                    .padding(.bottom, 10)
                HStack{
                    Text("I am available on : ")
                        .font(.system(size: 18, weight: .medium, design: .default))
                    Spacer()
                }
                .padding(.leading, 30)
                
                DropDownPickerDate()
                    .offset(x:-81)
                    .padding(5)
                HStack{
                    NavigationLink (destination: Confirmation().navigationBarBackButtonHidden(true)){
                        HStack{
                            Image(systemName: "person.2")
                            Text("Book")
                                .font(.system(size: 25, weight: .heavy, design: .default))
                        }
                        .padding()
                        .foregroundColor(.white)
                        .background(Color("AccentColor2"))
                        .cornerRadius(10)
                    }
                    .contentShape(Rectangle())
                    Spacer()
                }
                .padding(.top,7)
                .padding(.leading, 26)
                Spacer()
                
            }
        }
    }
}

#Preview {
    TutDescriptionPageView()
}
