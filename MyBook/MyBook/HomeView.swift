//
//  HomeView.swift
//  MyBook
//
//  Created by Mac on 1/5/21.
//

import SwiftUI


struct HomeView : View {
    var body : some View{
        NavigationView{
            
            
            VStack {
                ScrollView(.horizontal){
                HStack{
                    Image("book1").resizable().frame(width: 100, height: 100, alignment: .center).scaledToFit().border(Color.black).cornerRadius(4.0).padding()
                    Image("book1").resizable().frame(width: 100, height: 100, alignment: .center).scaledToFit().border(Color.black).cornerRadius(4.0).padding()
                }
                }
                List{
                    HStack{
                        NavigationLink("hh", destination: ContentView())
                    }
                    HStack{
                        NavigationLink("hh", destination: ContentView())
                    }
                }
              Spacer()
            }.navigationBarTitle("Home", displayMode: .inline)
        }
        
    }
    
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
