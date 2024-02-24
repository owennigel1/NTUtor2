//
//  DropDownPickerGrade.swift
//  NTUtor
//
//  Created by Owen Nigel on 24/2/24.
//

import SwiftUI

struct DropDownPickerGrade: View {
    
    @State var selection1: String? = nil
    
    var body: some View {
            DropDownPicker2(
                selection: $selection1,
                options: [
                    "A+",
                    "A",
                    "A-",
                    "B+",
                    "B",
                    "B-",
                    "C+ and below"
                ]
            )
    }
}

enum DropDownPickerState2 {
    case top
    case bottom
}

struct DropDownPicker2: View {
    
    @Binding var selection: String?
    var state: DropDownPickerState2 = .bottom
    var options: [String]
    var maxWidth: CGFloat = 180
    
    @State var showDropdown = false
    
    @SceneStorage("drop_down_zindex") private var index = 1000.0
    @State var zindex = 1000.0
    
    var body: some View {
        GeometryReader {
            let size = $0.size
            
            VStack(spacing: 0) {
                
                
                if state == .top && showDropdown {
                    OptionsView2()
                }
                
                HStack {
                    Text(selection == nil ? "Select grade" : selection!)
                        .foregroundColor(selection != nil ? .black : .gray)
                    
                    
                    Spacer(minLength: 0)
                    
                    Image(systemName: state == .top ? "chevron.up" : "chevron.down")
                        .font(.title3)
                        .foregroundColor(.gray)
                        .rotationEffect(.degrees((showDropdown ? -180 : 0)))
                }
                .padding(.horizontal, 15)
                .frame(width: 150, height: 50)
                .background(.white)
                .contentShape(.rect)
                .onTapGesture {
                    index += 1
                    zindex = index
                    withAnimation(.snappy) {
                        showDropdown.toggle()
                    }
                }
                .zIndex(10)
                
                if state == .bottom && showDropdown {
                    OptionsView2()
                }
            }
            .clipped()
            .background(.white)
            .cornerRadius(10)
            .overlay {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.gray)
            }
            .frame(height: size.height, alignment: state == .top ? .bottom : .top)
            
        }
        .frame(width: maxWidth, height: 50)
        .zIndex(zindex)
    }
    
    
    func OptionsView2() -> some View {
        VStack(spacing: 0) {
            ForEach(options, id: \.self) { option in
                HStack {
                    Text(option)
                    Spacer()
                    Image(systemName: "checkmark")
                        .opacity(selection == option ? 1 : 0)
                }
                .foregroundStyle(selection == option ? Color.primary : Color.gray)
                .animation(.none, value: selection)
                .frame(width: 150, height: 40)
                .contentShape(.rect)
                .padding(.horizontal, 15)
                .onTapGesture {
                    withAnimation(.snappy) {
                        selection = option
                        showDropdown.toggle()
                    }
                }
            }
        }
        .transition(.move(edge: state == .top ? .bottom : .top))
        .zIndex(1)
    }
}

#Preview {
    DropDownPickerGrade()
}
