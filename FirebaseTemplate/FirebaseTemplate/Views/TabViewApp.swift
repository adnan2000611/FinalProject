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
                Home(SelectedObject: Book(image: "from app", name: "from app", price: 0)).navigationBarTitle("Home", displayMode: .inline).environmentObject(BookEnv())
                
            }.tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            NavigationView{
                AddNewBookView().environmentObject(BookEnv())
                
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
