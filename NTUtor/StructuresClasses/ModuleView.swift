//
//  ModuleView.swift
//  NTUtor
//
//  Created by Owen Nigel on 25/2/24.
//

import SwiftUI

struct ModuleView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

class CurrentModule: ObservableObject {
    @Published var currentMod : String?
}

#Preview {
    ModuleView()
}
