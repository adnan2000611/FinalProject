//
//  SignInView.swift
//  FirebaseTemplate
//
//  Created by Omar Alibrahim on 12/27/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import SwiftUI


struct SignIn: View {
    @State var userCredentials = SignInCredentials(email: "", password: "")
    @EnvironmentObject var env: FirebaseEnv
    @State var alertShown: Bool = false
    @State var alertError: String = ""
    var body: some View {
        VStack(spacing: 25){
            
            VStack{
                Image("logo").resizable().scaledToFit().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Text("My Book").font(.system(size: 50, weight: .bold, design: .rounded)).offset(y:-20)
                Text("Find your book easy").padding([.leading, .bottom, .trailing]).padding(.top, 2.0).foregroundColor(.gray).offset(y:-20)
            }
            VStack(spacing: 15){
                HStack{
                    Text("Email").foregroundColor(Color(#colorLiteral(red: 0.4045294523, green: 0.278570652, blue: 0.8092384934, alpha: 1)))
                    Spacer()
                }
                TextField("email", text: $userCredentials.email).keyboardType(.emailAddress)
                Divider()
                HStack{
                    Text("Passworld").foregroundColor(Color(#colorLiteral(red: 0.4045294523, green: 0.278570652, blue: 0.8092384934, alpha: 1)))
                    Spacer()
                }
                SecureField("password", text: $userCredentials.password)
                Divider()
            }
            
            HStack{
                Spacer()
                Text("Forgot password?").foregroundColor(Color(#colorLiteral(red: 0.4045294523, green: 0.278570652, blue: 0.8092384934, alpha: 1)))
            }
            
            Button("Sign in"){
                env.signIn(user: userCredentials) { (uid) in
                    print("Signed in!")
                } fail: { (error) in
                    alertError = error.debugDescription
                    alertShown = true 
                }
            }.padding().padding(.horizontal, 100.0).background(Color(#colorLiteral(red: 0.4045294523, green: 0.278570652, blue: 0.8092384934, alpha: 1))).foregroundColor(.white).cornerRadius(10)
            Spacer()
            NavigationLink(
                destination: SignUp(),
                label: {
                    Text("New user ?")
                })
        }
        .navigationBarBackButtonHidden(true)
        .alert(isPresented: $alertShown, content: {
            Alert(title: Text("Error!"), message: Text(alertError), dismissButton: .cancel())
        })
        .padding()
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignIn()
            .environmentObject(FirebaseEnv())
    }
}
