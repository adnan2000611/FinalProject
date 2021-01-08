//
//  AppView.swift
//  MyBook
//
//  Created by Mac on 1/5/21.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        
        TabView{
            HomeView().tabItem {
                Image(systemName: "house").modifier(TabDesign())
                Text("Home").modifier(TabDesign())
            }
            
            AddNewBookView().tabItem {
                Image(systemName: "plus.app").modifier(TabDesign())
                Text("Add").modifier(TabDesign())
            }
            SettingsView().tabItem {
                Image(systemName: "gear")
                Text("Settings")
                }
                
        }.navigationBarBackButtonHidden(true)
        
    }
}

struct TabDesign : ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
    }
}
struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}

