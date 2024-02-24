//
//  TutorScheduleView.swift
//  NTUtor
//
//  Created by rachel lam on 24/2/24.
//

import SwiftUI

struct TutorScheduleView: View {
    var body: some View {
        VStack{
            ZStack{
//                Rectangle().fill(Color("AccentColor"))
//                    .frame(width: 375, height:250)
//                    .cornerRadius(20)
                Color("AccentColor")
                ScrollView {
                    VStack(spacing: 20) {
                        ForEach(0..<10) {
                            Text("Item \($0)")
                                .foregroundStyle(.white)
                                .font(.largeTitle)
                                .frame(width: 200, height: 200)
                                .background(.red)
                        }
                    }
                }
            }
            .frame(width:365, height: 300)
            .border(.blue, width: 5)
            .cornerRadius(20)
        }
    }
}
    

#Preview {
    TutorScheduleView()
}
