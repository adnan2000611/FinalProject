//
//  TabViewApp.swift
//  FirebaseTemplate
//
//  Created by Mac on 1/10/21.
//  Copyright © 2021 OMAR. All rights reserved.
//

import SwiftUI

struct TabViewApp: View {
    var body: some View {
        TabView {
            NavigationView{
                Home().navigationBarTitle("Home", displayMode: .inline)
                
            }.tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            NavigationView{
                AddNewBookView()
                
            }.tabItem {
                Image(systemName: "plus.app")
                Text("Add")
            }
            NavigationView{
                SettingView()
                
            }.tabItem {
                Image(systemName: "gear")
                Text("Setting")
            }
            
        }.edgesIgnoringSafeArea(.top)
        
    }
}

struct TabViewApp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewApp()
    }
}
