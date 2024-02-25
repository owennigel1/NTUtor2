//
//  BioView.swift
//  NTUtor
//
//  Created by Owen Nigel on 24/2/24.
//

import SwiftUI

struct BioView: View {
<<<<<<< HEAD
    var Bio: String = """
    Hello! I am Owen, a Y1 Business &
    Computer Science student. I provide
    tutoring for the following mods on
    Mon-Wed, 1-3pm and 8-10pm.
    
    - SC1005 Digital Logic
    - MH1812 Discrete Math
    - AB1202 Statistics and Analysis
    """
=======
    var bio: String
>>>>>>> main
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color("AccentColor2"), lineWidth: 3)
                .frame(width: 340, height:200)
            
            Text("\(bio)")
                .frame(width: 310)
        }
    }
}

//#Preview {
//    BioView()
//}
