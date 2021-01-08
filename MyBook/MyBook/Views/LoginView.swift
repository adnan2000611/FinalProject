//
//  LoginView.swift
//  MyBook
//
//  Created by Mac on 1/7/21.
//

import SwiftUI
import Firebase

struct LoginView : View{
    @State var email = ""
    @State var password = ""
    var body: some View{
        NavigationView{
            ZStack{
            VStack{
                Image("book2").resizable().scaledToFit().ignoresSafeArea()
                
                Spacer()
                
            }
            VStack{
                Spacer()
                VStack(alignment: .leading) {
                    Text("Welcome again").modifier(TitleDesgin())
                    Text("Sign in to continue").modifier(SubtitleDesgin())
                    UserTextField(imageName: "envelope", label: "Email", labeltextfield: $email)
                    
                    Divider()
                    UserTextField(imageName: "lock", label: "Password", labeltextfield: $password)
                    
                    Divider()
            HStack(alignment: .top){
                Spacer()
                NavigationLink(
                    destination: AppView().navigationBarHidden(true),
                    label: {
                        Button(action: {
                            login()
                        }, label: {
                            Text("Login")
                                .fontWeight(.bold)
                                .padding()
                                .frame(width: 380, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .background(Color(#colorLiteral(red: 0.406164676, green: 0.6472958922, blue: 0.6041335464, alpha: 1)))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        })
                        
                    })
                
                Spacer()
                        
                }
                    HStack{
                        Spacer()
                        Text("Forgot password?").modifier(TextDesginNotShow()).padding(.vertical, 10.0)
                        Spacer()
                    }
                    HStack{
                        Spacer()
                        NavigationLink(
                            destination: NewUser().navigationBarHidden(true),
                            label: {
                                Text("Sign up").fontWeight(.bold)
                                    .padding()
                                    .frame(width: 380, height: 70, alignment: .center)
                                    .background(Color.white)
                                    .foregroundColor(.black)
                                    .cornerRadius(10).shadow(radius: 3).padding(.bottom)
                                
                            })
                        
                        Spacer()
                    }
                    Spacer()
                }.modifier(ViewDesignUserPage(theHeight: 550))
                
            }
            }
            
        }.navigationBarBackButtonHidden(true)
    }
    
    func login(){
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            if error != nil {
                print(error?.localizedDescription ?? "")
                print(email, password)
            }else{
                print("Welcome")
                AppView()
            }
        }
    }
    
    func ShowHome () {
        AppView().navigationBarHidden(true)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
