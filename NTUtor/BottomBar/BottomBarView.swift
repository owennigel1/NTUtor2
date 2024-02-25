//
//  BottomBarView.swift
//  NTUtor
//
//  Created by Owen Nigel on 24/2/24.
//

import SwiftUI

struct BottomBarView: View {
    @State var currentTab: Tab = .Home

    
    init(){
        UITabBar.appearance().isHidden = true
    }
    
    @Namespace var animation
    
    var body: some View {
        TabView(selection: $currentTab){
            LandingPage()
                //.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                //.background(Color("bg").ignoresSafeArea())
                .tag(Tab.Home)
            
            TutorPage()
                //.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                //.background(Color("bg").ignoresSafeArea())
                .tag(Tab.Tutor)
            
            SchedulePage()
                //.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                //.background(Color("bg").ignoresSafeArea())
                .tag(Tab.Schedule)
            
            ProfilePage()
                //.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
               // .background(Color("bg").ignoresSafeArea())
                .tag(Tab.Profile)
        }
        .overlay(
            HStack(spacing: 0){
                ForEach (Tab.allCases, id: \.rawValue){ tab in
                    TabButton(tab: tab)
                }
                .padding(.vertical)
                .padding(.bottom, getSafeArea().bottom == 0 ? 5 : (getSafeArea().bottom - 15))
                .foregroundColor(Color.black)
                .background(Color.white
                    .shadow(color: Color.black, radius:1, x:0, y:0)
                    .mask(Rectangle().padding(.top,-20)))
            }
            ,
            alignment: .bottom
        ).ignoresSafeArea(.all, edges: .bottom)
    }
    
    func TabButton(tab: Tab) -> some View {
        GeometryReader { proxy in
            Button(action: {
                withAnimation(.spring()){
                    currentTab = tab
                }
            }, label: {
                VStack(spacing: 0){
                    Image(systemName: currentTab == tab ? tab.rawValue + ".fill" : tab.rawValue)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .foregroundColor(currentTab == tab ? Color("AccentColor2") : Color("AccentColor2"))
                        .background(
                            ZStack{
                            if currentTab == tab{
                                /*MaterialEffect(style: .light)
                                    //.clipShape(Circle())
                                    .matchedGeometryEffect(id: "TAB", in: animation)*/
                                Text(tab.tabName)
                                    .font(.footnote).padding(.top, 50)
                            }
                        })
                        .contentShape(Rectangle())
                        //.offset(y: currentTab == tab ? -15 : 0)
                        
                }
            })
        }.frame(height: 25)
    }
}

#Preview {
    BottomBarView()
}

enum Tab: String, CaseIterable{
    case Home = "house"
    case Tutor = "book"
    case Schedule = "calendar.circle"
    case Profile = "person"
    
    var tabName: String{
        switch self {
        case .Home:
            return "Home"
        case .Tutor:
            return "Tutor"
        case .Schedule:
            return "Schedule"
        case .Profile:
            return "Profile"
        }
    
    }
}

extension View {
    func getSafeArea() -> UIEdgeInsets {
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return .zero
        }
        
        guard let safeArea = screen.windows.first?.safeAreaInsets else {
            return .zero
        }
        return safeArea
    }
}

struct MaterialEffect: UIViewRepresentable {
    var style: UIBlurEffect.Style
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: style))
        
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        //
    }
}
    
