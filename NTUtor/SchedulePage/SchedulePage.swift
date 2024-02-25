//
//  SchedulePage.swift
//  NTUtor
//
//  Created by rachel lam on 24/2/24.
//

import SwiftUI


struct SchedulePage: View {
    var body: some View {
        VStack(spacing:20){
            ZStack{
                RoundedRectangle(cornerSize: CGSize(width: 20, height: 5))
                    .fill(Color("AccentColor2"))
                    .ignoresSafeArea()
                    .offset(y:-100)
                
                VStack{
                    Text("Hello, Owen")
                        .font(.system(size:20))
                        .offset(x:-110,y:-25)
                        .foregroundColor(.lightGray)
                    
                    Text("Schedule")
                        .font(.system(size:40))
                        .bold()
                        .foregroundColor(.white)
                        .offset(x:-80, y:-17)
                }
        
             }
            .offset(y:-55)
            
            //Tutor Sched
            VStack(spacing:-20){
                Text("Tutor Schedule View")
                    .font(.system(size:27))
                    .bold()
                    .italic()
                    .offset(x:-40)
                
                NavigationView {
                    TutorScheduleView()
                }
                .frame(width:.infinity, height:230)
                .offset(y:20)
                
             }.offset(y:-150)
            
            //Tutee Sched
            VStack(spacing:-70){
                Text("Tutee Schedule View")
                    .font(.system(size:27))
                    .bold()
                    .italic()
                    .offset(x:-40)
                
                NavigationView {
                    TuteeScheduleView()
                }
                .frame(width:.infinity, height:230)
                .offset(y:65)
                
            }.offset(y:-145)
            
        }
    }
}

#Preview {
    SchedulePage()
}
