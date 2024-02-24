//
//  ProfilePage.swift
//  NTUtor
//
//  Created by rachel lam on 24/2/24.
//

import SwiftUI

struct SpeechBubble: Shape {
    private let radius: CGFloat
    private let tailSize: CGFloat
    init(radius: CGFloat = 10) {
        self.radius = radius
        tailSize = 20
    }
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.minX, y: rect.maxY - radius))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY - rect.height / 2))
            path.addCurve(
                to: CGPoint(x: rect.minX, y: rect.maxY - rect.height / 2 - tailSize),
                control1: CGPoint(x: rect.minX - tailSize, y: rect.maxY - rect.height / 2),
                control2: CGPoint(x: rect.minX, y: rect.maxY - rect.height / 2 - tailSize / 2)
            )
            path.addArc(
                center: CGPoint(x: rect.minX + radius, y: rect.minY + radius),
                radius: radius,
                startAngle: Angle(degrees: 180),
                endAngle: Angle(degrees: 270),
                clockwise: false
            )
            path.addArc(
                center: CGPoint(x: rect.maxX - radius, y: rect.minY + radius),
                radius: radius,
                startAngle: Angle(degrees: 270),
                endAngle: Angle(degrees: 0),
                clockwise: false
            )
            path.addArc(
                center: CGPoint(x: rect.maxX - radius, y: rect.maxY - radius),
                radius: radius,
                startAngle: Angle(degrees: 0),
                endAngle: Angle(degrees: 90),
                clockwise: false
            )
            path.addArc(
                center: CGPoint(x: rect.minX + radius, y: rect.maxY - radius),
                radius: radius,
                startAngle: Angle(degrees: 90),
                endAngle: Angle(degrees: 180),
                clockwise: false
            )
        }
    }
}



struct ProfilePage: View {
    var body: some View {
        
        VStack{
            ZStack{
                //Background
                Rectangle()
                    .fill(
                        AngularGradient(
                            colors: [.white, Color("SecondaryColor")],
                            center: .center,
                            startAngle: .degrees(35),
                            endAngle: .degrees(180))
                    ).opacity(0.3)
                    .frame(width: 1000, height: 2000)
                    .offset(y:-240)
                    .ignoresSafeArea()
            
                //Top half display of profile: pic,name,course,year
                Circle().fill(
                    LinearGradient(gradient: Gradient(colors: [.white, Color("AccentColor")]), startPoint: .top, endPoint: .bottom)
                    )
                    .frame(width: 500, height:500)
                    .offset(y:-350)
                    .shadow(radius: 0)
                VStack(spacing:-5){
                    Image("ProfilePic")
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .frame(width: 175, height:200)
                        .scaledToFit()
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color("SecondaryColor"), lineWidth: 2))
                        .shadow(radius: 20)
                    VStack{
                        Text("Owen Nigel")
                            .font(.system(size: 35))
                            .bold()
                        HStack{
                            Text("BCG")
                                .italic()
                            Text("|")
                                .foregroundColor(Color("SecondaryColor"))
                            Text("Year 1")
                        }
                        .font(.system(size: 20))
                    }
                    
                }.offset(y:-255)
                
                //Edit Profile
                Image(systemName: "highlighter")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .offset(x:165,y:-360)
                
                //Bottom half display of bio, contact details + rates
                VStack(spacing:-15){
                    Text("About Me")
                        .bold()
                        .italic()
                        .font(.system(size:25))
                        .offset(x:-110, y:-35)
                    
                    ZStack{
                        SpeechBubble()
                            .stroke(Color.gray, lineWidth: 3)
                            .frame(width: 340, height:200)
                        
                        Text("""
                             Hello! I am Owen, a Y1 Business &
                             Computer Science student. I provide
                             tutoring for the following mods on
                             Mon-Wed, 1-3pm and 8-10pm.
                             
                             - SC1005 Digital Logic
                             - MH1812 Discrete Math
                             - SC1007 Data Structures and Algo
                             """)
                    }
                    
                    HStack{
                        Text("Rates:")
                            .foregroundColor(Color("AccentColor"))
                        Text("$15/h")
                            .italic()
                    }.bold().font(.system(size:20)).offset(y:40)
                    
                    HStack{
                        Text("Telegram:")
                            .foregroundColor(Color("AccentColor"))
                            .bold()
                        Text("@OwenNigel")
                            .foregroundColor(.gray)
                            .italic()
                    }.font(.system(size:20)).offset(y:60)
            
                }.offset(y:70)
            }
        }
    }
}

#Preview {
    ProfilePage()
}
