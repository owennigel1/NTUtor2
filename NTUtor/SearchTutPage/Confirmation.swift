//
//  Confirmation.swift
//  NTUtor
//
//  Created by Darrick Chew on 24/2/24.
//

import SwiftUI

struct Confirmation: View {
    var body: some View {
        VStack{
            Image(systemName: "checkmark.circle.fill")
                .resizable()
                .frame(width:50, height: 50)
                .foregroundColor(Color("AccentColor"))
                .padding()
            
            Text("Successfully Booked !")
                .font(.system(size: 25, weight: .regular, design: .default))
                .bold()
                .padding()
//            Text("A Confirmation Email Has Been Sent to \(tutorEmail)")
        }
    }
}

#Preview {
    Confirmation()
}
