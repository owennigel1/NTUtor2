//
//  TutorScheduleView.swift
//  NTUtor
//
//  Created by rachel lam on 24/2/24.
//

import SwiftUI

struct TutorSchedRow: Identifiable {
    let id = UUID()
    var tutorDate: String
    var tutorTime: String
    var courseCode: String
    var tuteeName: String

}

var TutorSchedInfo = [
    TutorSchedRow(tutorDate: "26 Feb 2024", tutorTime: "1300 - 1400", courseCode: "SC1005", tuteeName : "Hannah"),
    TutorSchedRow(tutorDate: "26 Feb 2024", tutorTime: "1400 - 1500", courseCode: "AB1202", tuteeName : "Johnny"),
    TutorSchedRow(tutorDate: "26 Feb 2024", tutorTime: "2100 - 2200", courseCode: "SC1005", tuteeName : "Naechel"),
    TutorSchedRow(tutorDate: "27 Feb 2024", tutorTime: "1400 - 1600", courseCode: "MH1812", tuteeName : "Johnny"),
    TutorSchedRow(tutorDate: "27 Feb 2024", tutorTime: "2000 - 2100", courseCode: "SC1005", tuteeName : "Jamus")
]

struct TutorSchedRowView: View{
    var tutorRow: TutorSchedRow
    
    var body: some View{
        HStack{
            VStack(alignment: .leading,spacing: 4){
                //Date & Time
                HStack(spacing:15){
                    Text(tutorRow.tutorDate)
                        .foregroundColor(Color("AccentColor2"))
                        .bold()
                        .font(.system(size:23))
                    
                    Text(tutorRow.tutorTime)
                        .foregroundColor(Color("AccentColor2"))
                        .italic()
                }
                
                //Module Code
                Text(tutorRow.courseCode)
                    .italic()
                    .bold()
                    .font(.system(size:30))
                    .offset(x:20)
                
            }.offset(x:10)
            
            //Name of Tutee
            Text(tutorRow.tuteeName)
                .foregroundColor(.black)
                .offset(x:-10, y:15)
        }
    }
}

struct TutorScheduleView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                ForEach(TutorSchedInfo){ tutorRow in
                    TutorSchedRowView(tutorRow: tutorRow)
                        .frame(width: 320, height: 80)
                        .background(Color.white)
                        .cornerRadius(20)
                        .shadow(radius: 2)
                }
            }
            .padding()
        }
        .background(LinearGradient(gradient: Gradient(colors: [Color("AccentColor").opacity(0.4), Color("AccentColor")]), startPoint: .top, endPoint: .bottom))
        .border(.accent,width:1)
        .frame(width: 352, height:210)
        .cornerRadius(20)
        .padding()
        
    }
}

struct ContentViewPreviews: PreviewProvider {
    static var previews: some View {
        TutorScheduleView()
    }
}

