//
//  LandingPage.swift
//  NTUtor
//
//  Created by Darrick Chew on 24/2/24.
//

import SwiftUI

struct LandingPage: View {
    var body: some View {
        Image("banner")
            .resizable()
            .frame(width: 250, height: 60)
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    LandingPage()
}
