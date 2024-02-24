//
//  TutorPage.swift
//  NTUtor
//
//  Created by Owen Nigel on 24/2/24.
//

import SwiftUI

struct TutorPage: View {
    var body: some View {
        VStack{
            Image("tutor")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300)
                .padding(20)
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
            Spacer()
        }
    }
}

#Preview {
    TutorPage()
}
