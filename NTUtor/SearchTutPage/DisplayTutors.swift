//
//  DisplayTutors.swift
//  NTUtor
//
//  Created by Darrick Chew on 24/2/24.
//

import SwiftUI

struct DisplayTutors: View {
    var body: some View {
        VStack {
            HStack{
                Image("ProfilePic")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.black, lineWidth: 2)
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .padding()
                
                VStack{
                    HStack{
                        Text("Name")
                            .frame(maxWidth: .infinity)
                        Text("Telegram")
                            .frame(maxWidth: .infinity)
                    }
                    HStack{
                        Text("Course")
                        Text("Year")
                    }
                    HStack{
                        Text("Grade")
                        Text("Rate")
                    }
                }
                .font(.custom("Georgia", size : 17))
            }
            .frame(width: 200, height: 120)
    
            HStack{
                VStack{
                    
                }
            }
        }.frame(width: 200, height: 120)
    }
}

#Preview {
    DisplayTutors()
}
