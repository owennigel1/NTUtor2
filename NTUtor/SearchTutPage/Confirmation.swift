//
//  Confirmation.swift
//  NTUtor
//
//  Created by Darrick Chew on 24/2/24.
//

import SwiftUI

struct Confirmation: View {
    var body: some View {
        VStack{
            Text("BOOKED")
//                .font(.system(size: 30, weight = .bold))
                .bold()
//            Text("A Confirmation Email Has Been Sent to \(tutorEmail)")
        }
    }
}

#Preview {
    Confirmation()
}
