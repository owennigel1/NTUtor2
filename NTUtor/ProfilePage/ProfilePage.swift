//
//  ProfilePage.swift
//  NTUtor
//
//  Created by rachel lam on 24/2/24.
//

import SwiftUI

let darkBlue = Color(red: 53/255, green: 105/255, blue: 251/255)
let lightBlue = Color(red: 45/255, green: 213/255, blue: 255/255)

struct ProfilePage: View {
    var body: some View {
        VStack{
            Text("Rachel Nae")
                .offset(x:20, y:-330)
                .bold()
                .foregroundColor(darkBlue)
            HStack{
                Text("BCG")
                    .italic()
                Text("Year 1")
            }.offset(x:20, y:-325)
            
        }
    }
}

#Preview {
    ProfilePage()
}
