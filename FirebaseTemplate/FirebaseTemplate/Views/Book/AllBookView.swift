//
//  AllBookView.swift
//  MyBook
//
//  Created by Mac on 1/11/21.
//  Copyright © 2021 OMAR. All rights reserved.
//

import SwiftUI

struct AllBookView: View {
    var body: some View {
        ScrollView{
            
            
            HStack{
                Spacer()
                VStack{
                    Image("book1").resizable().scaledToFit().frame(width: 100, height: 100, alignment: .center)
                    Text("the book")
                }.frame(width: 150, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                Spacer()
                VStack{
                    Image("book1").resizable().scaledToFit().frame(width: 100, height: 100, alignment: .center)
                    Text("not the book")
                }.frame(width: 150, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                Spacer()
            }.padding()
            HStack{
                Spacer()
                VStack{
                    Image("book1").resizable().scaledToFit().frame(width: 100, height: 100, alignment: .center)
                    Text("the book")
                }.frame(width: 150, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                Spacer()
                VStack{
                    Image("book1").resizable().scaledToFit().frame(width: 100, height: 100, alignment: .center)
                    Text("not the book")
                }.frame(width: 150, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                Spacer()
            }.padding()
            HStack{
                Spacer()
                VStack{
                    Image("book1").resizable().scaledToFit().frame(width: 100, height: 100, alignment: .center)
                    Text("the book")
                }.frame(width: 150, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                Spacer()
                VStack{
                    Image("book1").resizable().scaledToFit().frame(width: 100, height: 100, alignment: .center)
                    Text("not the book")
                }.frame(width: 150, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                Spacer()
            }.padding()
            HStack{
                Spacer()
                VStack{
                    Image("book1").resizable().scaledToFit().frame(width: 100, height: 100, alignment: .center)
                    Text("the book")
                }.frame(width: 150, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                Spacer()
                VStack{
                    Image("book1").resizable().scaledToFit().frame(width: 100, height: 100, alignment: .center)
                    Text("not the book")
                }.frame(width: 150, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                Spacer()
            }.padding()
            HStack{
                Spacer()
                VStack{
                    Image("book1").resizable().scaledToFit().frame(width: 100, height: 100, alignment: .center)
                    Text("the book")
                }.frame(width: 150, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                Spacer()
                VStack{
                    Image("book1").resizable().scaledToFit().frame(width: 100, height: 100, alignment: .center)
                    Text("not the book")
                }.frame(width: 150, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                Spacer()
            }.padding()
        }
    }
}

struct AllBookView_Previews: PreviewProvider {
    static var previews: some View {
        AllBookView()
    }
}
