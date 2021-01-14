//
//  SignInView.swift
//  FirebaseTemplate
//
//  Created by Omar Alibrahim on 12/27/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import SwiftUI

struct SignUp: View {
    @State var user = User()
    @State var password = ""
    @EnvironmentObject var env: FirebaseEnv
    var body: some View {
        NavigationView {
            VStack(spacing: 15){
                VStack{
                    Image("logo").resizable().scaledToFit().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Text("My Book").font(.system(size: 50, weight: .bold, design: .rounded)).offset(y:-20)
                    Text("Find your book easy").padding([.leading, .bottom, .trailing]).padding(.top, 2.0).foregroundColor(.gray).offset(y:-20)
                }
                VStack(alignment: .leading){
                    
                    Text("First Name").foregroundColor(Color(#colorLiteral(red: 0.4045294523, green: 0.278570652, blue: 0.8092384934, alpha: 1)))
                TextField("first name", text: $user.firstName).keyboardType(.default)
                    Text("Last Name").foregroundColor(Color(#colorLiteral(red: 0.4045294523, green: 0.278570652, blue: 0.8092384934, alpha: 1)))
                TextField("last name", text: $user.lastName).keyboardType(.default)
                    Text("Email").foregroundColor(Color(#colorLiteral(red: 0.4045294523, green: 0.278570652, blue: 0.8092384934, alpha: 1)))
                TextField("email", text: $user.email).keyboardType(.emailAddress)
                    Text("Password").foregroundColor(Color(#colorLiteral(red: 0.4045294523, green: 0.278570652, blue: 0.8092384934, alpha: 1)))
                SecureField("password", text: $password)
                }
                Button("Sign up"){
                    env.signUp(user: user, password: password)
                }.padding().padding(.horizontal, 100.0).background(Color(#colorLiteral(red: 0.4045294523, green: 0.278570652, blue: 0.8092384934, alpha: 1))).foregroundColor(.white).cornerRadius(10)
                Spacer()
                NavigationLink(
                    destination: SignIn(),
                    label: {
                        Text("Already user ?")
                    })
            }.padding()
        }.navigationBarBackButtonHidden(true)
        
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            SignUp()
                .environmentObject(FirebaseEnv())
        }
    }
}
