//
//  BioView.swift
//  NTUtor
//
//  Created by Owen Nigel on 24/2/24.
//

import SwiftUI

struct BioView: View {
    var bio: String
    
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
