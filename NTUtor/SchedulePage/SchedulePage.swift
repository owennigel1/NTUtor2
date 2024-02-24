//
//  SchedulePage.swift
//  NTUtor
//
//  Created by rachel lam on 24/2/24.
//

import SwiftUI

struct SchedulePage: View {
    var body: some View {
        VStack(spacing:5){
            VStack{
                Text("Hello, Owen")
                    .font(.system(size:20))
                    .offset(x:-110,y:-10)
                    .foregroundColor(.gray)
            
                Text("Schedule")
                    .font(.system(size:40))
                    .bold()
                    .offset(x:-80)
                
                Rectangle().fill(Color("AccentColor"))
                    .frame(width: 375, height:250)
                    .cornerRadius(20)
                
                Rectangle().fill(Color("SecondaryColor"))
                    .frame(width: 375, height:250)
                    .cornerRadius(20)
            }.offset(y:-40)
            
            
        }
    }
}

#Preview {
    SchedulePage()
}
