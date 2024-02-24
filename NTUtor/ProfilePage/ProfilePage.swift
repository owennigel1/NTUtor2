//
//  ProfilePage.swift
//  NTUtor
//
//  Created by rachel lam on 24/2/24.
//

import SwiftUI


struct ProfilePage: View {
    var body: some View {
        HStack{
            Image(systemName: "person.fill")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 150, height:100)
                .scaledToFit()
                .clipShape(Circle())
                .overlay(Circle().stroke(Color(red: 39 / 255, green: 113 / 255, blue: 233 / 255), lineWidth: 5))
                .shadow(radius: 20)
                .offset(x:-60,y:-330)
        
            VStack{
                Text("Rachel Nae")
                    .offset(x:20, y:-330)
                    .bold()
                    .foregroundColor(Color("AccentColor"))
                HStack{
                    Text("BCG")
                        .italic()
                    Text("Year 1")
                }.offset(x:20, y:-325)
                
            }
        }
    }
}

#Preview {
    ProfilePage()
}
