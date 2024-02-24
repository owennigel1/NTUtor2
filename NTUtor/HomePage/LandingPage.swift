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
                Spacer()
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

#Preview {
    LandingPage()
}
