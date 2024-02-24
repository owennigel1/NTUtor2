//
//  DisplayTutors.swift
//  NTUtor
//
//  Created by Darrick Chew on 24/2/24.
//

import SwiftUI

struct DisplayTutors: View {
    var body: some View {
        
        ZStack {
            Rectangle()
                .fill(Color("AccentColor"))
                .frame(width: 350, height: 36)
                .frame(maxWidth: .infinity)
                .padding(.bottom, 113)
            HStack{
                Image("ProfilePic")
                    .resizable()
                    .cornerRadius(10, corners: [.topLeft, .bottomLeft])
                    .frame(width: 140)

                    
                    VStack (spacing: 0){
                        GeometryReader{ geometry in
                            HStack{
                                Text("Owen")
                                    .frame(width: geometry.size.width * 0.4, height: 30 ,alignment: .leading)
                                    .font(.custom("Arial", size : 20))
                                    .bold()
                                    .foregroundColor(.white)
                                    .padding(.trailing, 1)
                                    .padding(.top, 3)
                                    .shadow(color: .black, radius: 1)
                                    
                                
                                Text("@owennigel")
                                    .frame(width: geometry.size.width * 0.6, height: 30 ,alignment: .leading)
                                    .foregroundColor(.white)
                                    .padding(.top, 3)
                                    .shadow(color: .black, radius: 1)
                            }
                        }
                        GeometryReader{ geometry in
                            HStack{
                                Text("Course:")
                                    .frame(width: geometry.size.width * 0.5, height: 10 ,alignment: .leading)
                                Text("Year:")
                            }
                            .padding(.top, 13)
                        }
                        GeometryReader{ geometry in
                            HStack{
                                Text("CS")
                                    .frame(width: geometry.size.width * 0.5, height: 10 ,alignment: .leading)
                                Text("2")
                            }
                            .padding(.top, 8)
                        }
                        GeometryReader{ geometry in
                            HStack{
                                Text("Grade:")
                                    .frame(width: geometry.size.width * 0.5, height: 5 ,alignment: .leading)
                                Text("Rate:")
                            }
                            .padding(.top, 5)
                        }
                        GeometryReader{ geometry in
                            HStack{
                                Text("A+")
                                    .frame(width: geometry.size.width * 0.5, height: 5 ,alignment: .leading)
                                Text("$15 / HR")
                            }
                            .padding(.bottom, 5)
                        }
                    }
                    .font(.custom("Arial", size : 15))
                    .frame(maxHeight: .infinity)
                }
            }
            .frame(width: 350, height: 150)
            .background(Color.white) // Ensure the shadow has a background color
            .cornerRadius(10) // Rounded corners for the entire HStack
            .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 2)
    }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}


#Preview {
    DisplayTutors()
}
