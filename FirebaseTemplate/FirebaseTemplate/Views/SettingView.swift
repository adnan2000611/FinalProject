//
//  SettingView.swift
//  FirebaseTemplate
//
//  Created by Mac on 1/10/21.
//  Copyright © 2021 OMAR. All rights reserved.
//

import SwiftUI
struct SignOutButton: View{
    var env: FirebaseEnv
    var body: some View{
        Button("Signout") {
            env.signOut()
        }
        .foregroundColor(.black)
    }
}
struct SettingView: View {
    @EnvironmentObject var env: FirebaseEnv
    var body: some View {
        List{
            SignOutButton(env: env)
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
