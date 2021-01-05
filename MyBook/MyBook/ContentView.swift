//
//  ContentView.swift
//  MyBook
//
//  Created by Mac on 12/30/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text(", world!")
            .padding()
    }
}



struct LoginView : View{
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
                    NewUserTextField(imageName: "envelope", label: "Email")
                    Divider()
                    NewUserTextField(imageName: "lock", label: "Password")
                    Divider()
            HStack(alignment: .top){
                Spacer()
                NavigationLink(
                    destination: AppView().navigationBarHidden(true),
                    label: {
                        Text("Login")
                            .fontWeight(.bold)
                            .padding()
                            .frame(width: 380, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color(#colorLiteral(red: 0.406164676, green: 0.6472958922, blue: 0.6041335464, alpha: 1)))
                            .foregroundColor(.white)
                            .cornerRadius(10)
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
            
        }
    }
}
struct NewUserTextField: View {
    let imageName : String
    let label : String
    @State var labeltextfield : String = ""
    
    var body: some View {
        HStack{
            Spacer()
            VStack{
                Image(systemName: imageName).resizable().scaledToFit().frame(width: 40, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
            }
            Spacer()
            VStack(alignment: .leading){
                Text(label)
                TextField(label, text: $labeltextfield)
                
            }
            
        }.padding()
    }
}
struct ViewDesignUserPage: ViewModifier {
    var theHeight: CGFloat
    func body(content: Content) -> some View {
        content.frame(width: 420, height: theHeight, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).background(Color.white).cornerRadius(40)
    }
}
struct TitleDesgin : ViewModifier{
    func body(content: Content) -> some View {
        content.padding(.top, 60).padding([.leading,  .trailing], 30.0).font(.custom("Avenir-Black", size: 30))
    }
}
struct SubtitleDesgin : ViewModifier {
    func body(content: Content) -> some View {
        content.padding(.horizontal, 30.0).modifier(TextDesginNotShow()).padding(.bottom)
    }
}
struct TextDesginNotShow : ViewModifier {
    func body(content: Content) -> some View {
        content.padding(.trailing, 5.0).foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1))).font(.custom("Avenir", size: 17))
    }
}

struct NewUser: View {
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
                
                
                
                    NewUserTextField(imageName: "person", label: "Name")
                    Divider()
                    NewUserTextField(imageName: "envelope", label: "Email")
                    Divider()
                    NewUserTextField(imageName: "lock", label: "Password")
                    
                    
                    
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
        NewUser()
        
    }
}
