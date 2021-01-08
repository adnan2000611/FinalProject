//
//  SettingsView.swift
//  MyBook
//
//  Created by Mac on 1/5/21.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List{
            NavigationLink(
                destination: LoginView(),
                label: {
                    Text("Logout")
                })
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
