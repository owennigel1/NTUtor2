//
//  Confirmation.swift
//  NTUtor
//
//  Created by Darrick Chew on 24/2/24.
//

import SwiftUI

struct Confirmation: View {
    var body: some View {
        NavigationView {
            VStack{
                Image(systemName: "checkmark.circle.fill")
                    .resizable()
                    .frame(width:50, height: 50)
                    .foregroundColor(Color("AccentColor2"))
                    .padding()
                
                Text("Successfully Booked !")
                    .font(.system(size: 25, weight: .regular, design: .default))
                    .bold()
                    .padding()
                
                NavigationLink (destination: LandingPage().navigationBarBackButtonHidden(true)) {
                    HStack{
                        Image(systemName: "arrow.left.circle.fill")

                        Text("Back")
                            .font(.system(size: 15, weight: .heavy, design: .default))

                    }
                    .padding()
                    .foregroundColor(.white)
                    .frame(width: 100, height: 30)
                    .background(Color("AccentColor2"))
                    .cornerRadius(10)
                }
            }
        }
    }
}

#Preview {
    Confirmation()
}
