//
//  LandingPage.swift
//  NTUtor
//
//  Created by Darrick Chew on 24/2/24.
//

import SwiftUI

struct LandingPage: View {
    var body: some View {
        ZStack{
            VStack{
                Image("banner")
                    .resizable()
                    .frame(width: 250, height: 60)
                    .padding(.top, 80)
                Image("students")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300)
                    .padding(20)
                DropDownPickerView()
                    .offset(x:-58)
                    .padding(.top, 20)
                    .padding(.bottom,40)
                Button {
                    print("Button pressed")
                } label: {
                    HStack{
                        Image(systemName: "magnifyingglass")
                        Text("Find a Tutor")
                            .font(.system(size: 25, weight: .heavy, design: .default))
                    }
                    .padding()
                    .foregroundColor(.white)
                    .background(Color("AccentColor"))
                    .cornerRadius(10)
                }
                .contentShape(Rectangle())
                Spacer()
            }
        }
    }
}

#Preview {
    LandingPage()
}
