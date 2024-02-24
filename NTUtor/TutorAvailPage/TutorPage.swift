//
//  TutorPage.swift
//  NTUtor
//
//  Created by Owen Nigel on 24/2/24.
//

import SwiftUI

struct TutorPage: View {
    var body: some View {
        NavigationView {
            ZStack{
                Image("student_tutor")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180)
                    .position(x:290, y: 760)
                VStack{
                    Image("tutor")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 208)
                        .padding(.top,20)
                    HStack{
                        Text("Be a Tutor")
                            .font(.system(size: 25, weight: .heavy, design: .default))
                        Spacer()
                    }
                    .padding(.leading, 50)
                    DropDownPickerView()
                        .offset(x:-58)
                        .padding(10)
                    DropDownPickerGrade()
                        .offset(x:-58)
                        .padding(.bottom, 10)
                    HStack{
                        Text("State your availability : ")
                            .font(.system(size: 18, weight: .medium, design: .default))
                        Spacer()
                    }
                    .padding(.leading, 50)
                    DatePickerView()
                    HStack{
                        NavigationLink(destination: ConfirmationTutor().navigationBarBackButtonHidden(true)){
                            HStack{
                                Image(systemName: "paperplane")
                                Text("Submit")
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
                    .padding(.top,46)
                    .padding(.leading, 45)
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    TutorPage()
}
