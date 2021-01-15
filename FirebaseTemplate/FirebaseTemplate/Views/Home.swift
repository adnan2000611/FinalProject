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
                            
                            BookRow(book : HBook, isPresenting: $isPresenting, selectedBook: $SelectedObject)
                        }
                    }
                }.padding()
                
                
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
                            
                            BookRow(book : HBook, isPresenting: $isPresenting, selectedBook: $SelectedObject)
                        }
                    }
                }.padding()
                
                
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
                            
                            BookRow(book : HBook, isPresenting: $isPresenting, selectedBook: $SelectedObject)
                        }
                    }
                }.padding().onAppear(perform: booKEnv.loadBooks)
                
                
                .background(EmptyView()).fullScreenCover(isPresented: $isPresenting) {
                   
                    BookDetailsView(thebook: SelectedObject)
                    
                 }
                    
               
            }.padding().frame(width: 450)
            
            
        }.onAppear{
            
            booKEnv.loadBooks()
            
            
            
        }
        }
    }


//struct Home_Previews: PreviewProvider {
//    static var previews: some View {
//        Home(SelectedObject: <#Book#>)
//            .environmentObject(FirebaseEnv())
//    }
//}

struct BookRow: View {
    let book : Book
    @State var theBookImageUrl : URL?
    @Binding var isPresenting : Bool
    @Binding var selectedBook : Book
    
    var body: some View {
        Button(action: {
            selectedBook = book
            isPresenting.toggle()
            
            
        }, label: {
            WebImage(url: theBookImageUrl)
                .resizable()
                .scaledToFit()
                .frame(width: 180, height: 180, alignment: .center)
                .cornerRadius(30)
        }).onAppear(perform: {
            book.loadImage { (url) in
                self.theBookImageUrl = url
            }
        })
    }
}
