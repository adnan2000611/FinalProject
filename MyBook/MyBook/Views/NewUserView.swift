//
//  NewUserView.swift
//  MyBook
//
//  Created by Mac on 1/7/21.
//

import SwiftUI

struct NewUser: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationView{
         ZStack{
            VStack{
                Image("book2").resizable().scaledToFit().ignoresSafeArea()
                Spacer()
            }
            VStack{
                Spacer()
                VStack(alignment: .leading) {
                    Text("Create an account").modifier(TitleDesgin())
                    Text("Find your book easy").modifier(SubtitleDesgin())
                
                
                
                    UserTextField(imageName: "person", label: "Name", labeltextfield: $name)
                    Divider()
                    UserTextField(imageName: "envelope", label: "Email", labeltextfield: $email)
                    Divider()
                    UserTextField(imageName: "lock", label: "Password", labeltextfield: $password)
                    
                    
                    
                    HStack(alignment: .top){
                Spacer()
                NavigationLink(
                    destination: AppView().navigationBarHidden(true),
                    label: {
                        Text("Sign up").fontWeight(.bold)
                            .padding()
                            .frame(width: 380, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color(#colorLiteral(red: 0.406164676, green: 0.6472958922, blue: 0.6041335464, alpha: 1)))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }).navigationBarHidden(true)
                
                Spacer()
                        
                    }
                HStack{
                    Spacer()
                    Text("Already have an account?").modifier(TextDesginNotShow())
                    NavigationLink(
                        destination: LoginView().navigationBarHidden(true),
                        label: {
                            
                                Text("Login").fontWeight(.bold).padding().frame(width: 160, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).foregroundColor(.black).cornerRadius(10).shadow(radius: 2 ).padding(.horizontal, 5.0)
                            
                        })
                    
                }.padding().padding(.bottom)
                    Spacer()
                
                }.modifier(ViewDesignUserPage(theHeight: 600))
                
            }
         }
            
        }
    }
}

struct NewUserView_Previews: PreviewProvider {
    static var previews: some View {
        NewUser()
    }
}
