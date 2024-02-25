//
//  TuteeScheduleView.swift
//  NTUtor
//
//  Created by rachel lam on 25/2/24.
//

import SwiftUI

struct TuteeSchedRow: Identifiable {
    let id = UUID()
    var tuteeDate: String
    var tuteeTime: String
    var courseCode: String
    var tutorName: String

}

var TuteeSchedInfo = [
    TuteeSchedRow(tuteeDate: "26 Feb 2024", tuteeTime: "0900-1000", courseCode: "SC1015", tutorName : "Owen"),
    TuteeSchedRow(tuteeDate: "26 Feb 2024", tuteeTime: "1700-1800", courseCode: "SC1015", tutorName : "Darrick"),
    TuteeSchedRow(tuteeDate: "27 Feb 2024", tuteeTime: "1000-1100", courseCode: "MH1812", tutorName : "Rachel")
]

struct TuteeSchedRowView: View{
    var tuteeRow: TuteeSchedRow
    
    var body: some View{
        HStack{
            VStack(alignment: .leading,spacing: 4){
                //Date & Time
                HStack(spacing:15){
                    Text(tuteeRow.tuteeDate)
                        .foregroundColor(Color("AccentColor2"))
                        .bold()
                        .font(.system(size:23))
                    
                    Text(tuteeRow.tuteeTime)
                        .foregroundColor(Color("AccentColor2"))
                        .italic()
                }
                
                //Module Code
                Text(tuteeRow.courseCode)
                    .italic()
                    .bold()
                    .font(.system(size:30))
                    .offset(x:20)
                
            }.offset(x:10)
            
            //Name of Tutor
            Text(tuteeRow.tutorName)
                .foregroundColor(.black)
                .offset(x:-10, y:15)
        }
    }
}

struct TuteeScheduleView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                ForEach(TuteeSchedInfo){ tuteeRow in
                    TuteeSchedRowView(tuteeRow: tuteeRow)
                        .frame(width: 320, height: 80)
                        .background(Color.white)
                        .cornerRadius(20)
                        .shadow(radius: 2)
                }
            }
            .padding()
        }
        .background(LinearGradient(gradient: Gradient(colors: [Color("SecondaryColor").opacity(0.3), Color("SecondaryColor")]), startPoint: .top, endPoint: .bottom))
        .border(Color("SecondaryColor"),width:1)
        .frame(width: 352, height:210)
        .cornerRadius(20)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TuteeScheduleView()
        }
    }
}
