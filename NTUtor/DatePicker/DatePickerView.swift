//
//  DatePickerView.swift
//  NTUtor
//
//  Created by Owen Nigel on 24/2/24.
//

import SwiftUI


struct DatePickerView: View {
    @State var selectedDate: Date = Date()
    
    var body: some View {
        DatePicker("Date/Time",
                   selection: $selectedDate,
                   displayedComponents: [.date, .hourAndMinute]
        )
        .padding(.leading, 51)
        .padding(.trailing, 30)
    }
}

#Preview {
    DatePickerView()
}
