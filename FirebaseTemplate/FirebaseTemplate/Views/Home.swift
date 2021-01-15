//
//  Home.swift
//  FirebaseTemplate
//
//  Created by Omar Alibrahim on 12/27/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

/*struct SignOutButton: View{
    var env: FirebaseEnv
    var body: some View{
        Button("Signout") {
            env.signOut()
        }
        .foregroundColor(.red)
    }
}*/

struct Home: View {
    //@EnvironmentObject var env: FirebaseEnv
    let itemsEnvironment = ItemsEnv()
    @State var isPresenting = false
    @State var SelectedObject : Book
    @State var ImageUrl : URL?
    /*
     1- onTapGensure on book to togggle isPresentingSheet
     2- call .fullscreensheet
     */
    @EnvironmentObject var booKEnv: BookEnv
    
    func loadImage(){
        Networking.downlodImage(storagePath: "Image/Books/\(SelectedObject.image).png") { (url) in
            self.ImageUrl = url
        }
    }
    
    var body: some View {
        
        VStack {
            HStack(alignment: .center){
                Image("joey").resizable().scaledToFit().frame(width: 55, height: 55, alignment: .center).clipShape(Circle())
                Spacer()
                Image(systemName: "magnifyingglass").resizable().scaledToFit().frame(width: 25, height: 25, alignment: .center).foregroundColor(.gray)
            }.padding(.vertical).padding(.top).frame(width: 400, height: 50, alignment: .center)
            ScrollView{
                
                HStack {
                    Text("Kuwait Unverstiy").font(.custom("Copperplate-Bold", size: 20))
                    Spacer()
                    NavigationLink(destination: AllBookView(),
                                   label: {
                                    Text("View All > ").foregroundColor(.gray)
                                   })
                }.padding(.horizontal)
                ScrollView(.horizontal){
                    
                    HStack{
                        ForEach(booKEnv.books, id: \.self){ HBook in
                            Button(action: {
                                isPresenting.toggle()
                                self.SelectedObject = HBook
                            }, label: {
                                WebImage(url: ImageUrl).resizable().scaledToFit().frame(width: 180, height: 180, alignment: .center).cornerRadius(30)
                            })
                        }
                    }
                }.padding().onAppear(perform: booKEnv.loadBooks)
                
                
                .background(EmptyView()).fullScreenCover(isPresented: $isPresenting) {
                   
                    BookDetailsView(thebook: SelectedObject)
                    
                 }
                
                HStack {
                    Text("Gust Unverstiy").font(.custom("Copperplate-Bold", size: 20))
                    Spacer()
                    NavigationLink(destination: AllBookView(),
                                   label: {
                                    Text("View All > ").foregroundColor(.gray)
                                   })
                }.padding(.horizontal)
                ScrollView(.horizontal){
                    
                    HStack{
                        ForEach(booKEnv.books, id: \.self){ HBook in
                            Button(action: {
                                isPresenting.toggle()
                                self.SelectedObject = HBook
                            }, label: {
                                WebImage(url: ImageUrl).resizable().scaledToFit().frame(width: 180, height: 180, alignment: .center).cornerRadius(30)
                            })
                        }
                    }
                }.padding().onAppear(perform: booKEnv.loadBooks)
                
                
                .background(EmptyView()).fullScreenCover(isPresented: $isPresenting) {
                   
                    BookDetailsView(thebook: SelectedObject)
                    
                 }
                HStack {
                    Text("Aum Unverstiy").font(.custom("Copperplate-Bold", size: 20))
                    Spacer()
                    NavigationLink(destination: AllBookView(),
                                   label: {
                                    Text("View All > ").foregroundColor(.gray)
                                   })
                }.padding(.horizontal)
                ScrollView(.horizontal){
                    
                    HStack{
                        ForEach(booKEnv.books, id: \.self){ HBook in
                            Button(action: {
                                isPresenting.toggle()
                                self.SelectedObject = HBook
                            }, label: {
                                WebImage(url: ImageUrl).resizable().scaledToFit().frame(width: 180, height: 180, alignment: .center).cornerRadius(30)
                            })
                        }
                    }
                }.padding().onAppear(perform: booKEnv.loadBooks)
                
                
                .background(EmptyView()).fullScreenCover(isPresented: $isPresenting) {
                   
                    BookDetailsView(thebook: SelectedObject)
                    
                 }
                    
                /*NavigationLink(
                    destination: BookDetailsView(),
                    label: {
                        Image("book1").resizable().frame(width: 100, height: 120, alignment: .center)
                    })
                    NavigationLink(
                        destination: BookDetailsView(),
                        label: {
                            Image("book1").resizable().frame(width: 100, height: 120, alignment: .center)
                        })
                    NavigationLink(
                        destination: BookDetailsView(),
                        label: {
                            Image("book1").resizable().frame(width: 100, height: 120, alignment: .center)
                        })*/
                    
            }.padding().frame(width: 450).onAppear(perform: loadImage)
            
        }
        }        /*NavigationView {
            Form {
                Section(footer: Text("you are signed in!") , content: {
                    NavigationLink("Add a new item", destination: AddItem()
                                    .environmentObject(itemsEnvironment))
                    NavigationLink("List all items", destination: ListItems()
                                    .environmentObject(itemsEnvironment))
                })
            }
            .navigationTitle("Home")*/
            //.navigationBarItems(trailing: SignOutButton(env: env))
        
    }


//struct Home_Previews: PreviewProvider {
//    static var previews: some View {
//        Home(SelectedObject: <#Book#>)
//            .environmentObject(FirebaseEnv())
//    }
//}
