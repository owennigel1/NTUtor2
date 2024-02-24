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
            //Module Name
            //Text ("\(selection)")
            
            //First Box
            HStack{
                Image("ProfilePic")
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .aspectRatio(contentMode: .fit)
                /*.overlay(
                 RoundedRectangle(cornerRadius: 15)
                 .stroke(Color.black, lineWidth: 2)
                 )*/
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                Spacer()
                
                VStack (spacing: 0){
                    GeometryReader{ geometry in
                        HStack{
                            Text("Owen")
                                .frame(width: geometry.size.width * 0.4, height: 15 ,alignment: .leading)
                                .font(.custom("Georgia", size : 25))
                            
                            Text("@owennigel")
                                .frame(width: geometry.size.width * 0.6, height: 15 ,alignment: .leading)
                                .font(.custom("Georgia", size : 15))
                                .foregroundColor(.blue)
                        }
                        .padding(.top)
                    }
                    GeometryReader{ geometry in
                        HStack{
                            Text("Course:")
                                .frame(width: geometry.size.width * 0.4, height: 5 ,alignment: .leading)
                            Text("Year:")
                                .frame(width: geometry.size.width * 0.6, height: 5 ,alignment: .leading)
                        }
                    }
                    GeometryReader{ geometry in
                        HStack{
                            Text("Grade:")
                                .frame(width: geometry.size.width * 0.4, height: 5 ,alignment: .leading)
                            Text("Rate:")
                                .frame(width: geometry.size.width * 0.6, height: 5 ,alignment: .leading)
                        }
                    }
                }
                .font(.custom("Georgia", size : 13))
                .frame(maxHeight: .infinity)
            }
            .frame(width: 350, height: 150)
            .frame(maxWidth: .infinity)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.black, lineWidth: 2)
            )
            .padding()
            
            //Second Box
        }
    }
}

#Preview {
    DisplayTutors()
}
