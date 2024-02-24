//
//  ProfilePage.swift
//  NTUtor
//
//  Created by rachel lam on 24/2/24.
//

import SwiftUI


struct ProfilePage: View {
    var body: some View {
        ZStack{
            Circle().fill(Color.teal.opacity(0.3))
                .frame(width: 500, height:500)
                .offset(y:-333)
            VStack(spacing:0){
                Image("ProfilePic")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 175, height:200)
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color(red: 39 / 255, green: 113 / 255, blue: 233 / 255), lineWidth: 4))
                    .shadow(radius: 20)
                VStack{
                    Text("Sophia Lim")
                        .font(.system(size: 35))
                        .bold()
                    HStack{
                        Text("BCG")
                            .italic()
                        Text("|")
                            .foregroundColor(Color("AccentColor"))
                        Text("Year 1")
                    }
                    .font(.system(size: 20))
                }
                
            }.offset(y:-245)
        }
    }
}

#Preview {
    ProfilePage()
}
