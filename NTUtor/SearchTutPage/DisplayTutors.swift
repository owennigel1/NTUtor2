//
//  DisplayTutors.swift
//  NTUtor
//
//  Created by Darrick Chew on 24/2/24.
//

import SwiftUI


struct DisplayTutors: View {
    
    var name: String?
    var tele: String?
    var course: String?
    var year: Int?
    var grade: String?
    var rate: String?
    var pic: String?
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("AccentColor2"))
                .frame(width: 350, height: 36)
                .frame(maxWidth: .infinity)
                .padding(.bottom, 113)
            HStack{
                Image("\(pic!)")
                    .resizable()
                    .cornerRadius(10, corners: [.topLeft, .bottomLeft])
                    .frame(width: 140)

                    
                    VStack (spacing: 0){
                        GeometryReader{ geometry in
                            HStack{
                                Text("\(name!)")
                                    .frame(width: geometry.size.width * 0.4, height: 30 ,alignment: .leading)
                                    .font(.custom("Arial", size : 20))
                                    .bold()
                                    .foregroundColor(.white)
                                    .padding(.trailing, 1)
                                    .padding(.top, 3)
                                    .shadow(color: .black, radius: 1)
                                    
                                
                                Text("@\(tele!)")
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
                                Text("\(course!)")
                                    .frame(width: geometry.size.width * 0.5, height: 10 ,alignment: .leading)
                                Text("\(year!)")
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
                                Text("\(grade!)")
                                    .frame(width: geometry.size.width * 0.5, height: 5 ,alignment: .leading)
                                Text("\(rate!)")
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


//#Preview {
  //  DisplayTutors()
//}
