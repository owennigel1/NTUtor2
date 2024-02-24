//
//  SchedulePage.swift
//  NTUtor
//
//  Created by rachel lam on 24/2/24.
//

import SwiftUI

struct SchedulePage: View {
    var body: some View {
        VStack{
            VStack{
                Text("Hello, Owen")
                    .font(.system(size:20))
                    .offset(x:-30,y:-10)
                    .foregroundColor(.gray)
                Text("Schedule")
                    .font(.system(size:40))
                    .bold()
            }.offset(x:-80, y:-315)
            
            
        }
    }
}

#Preview {
    SchedulePage()
}
