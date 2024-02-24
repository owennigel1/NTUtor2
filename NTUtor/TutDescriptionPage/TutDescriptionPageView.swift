//
//  TutDescriptionPageView.swift
//  NTUtor
//
//  Created by Owen Nigel on 24/2/24.
//

import SwiftUI

struct TutDescriptionPageView: View {
    var body: some View {
        VStack{
            HStack{
                Text("Tutor's Information")
                    .font(.system(size: 25, weight: .heavy, design: .default))
                    .padding(.leading, 30)
                Spacer()
            }
            .padding(.top, 20)
            
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
                .padding(10)
            
            Spacer()
            
        }
    }
}

#Preview {
    TutDescriptionPageView()
}
