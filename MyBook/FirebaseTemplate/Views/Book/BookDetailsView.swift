//
//  BookDetailsView.swift
//  FirebaseTemplate
//
//  Created by Mac on 1/11/21.
//  Copyright © 2021 OMAR. All rights reserved.
//

import SwiftUI

struct BookDetailsView: View {
    var body: some View {
        
        ZStack{
            Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).ignoresSafeArea()
            
                
            VStack {
                
                Image("book1").resizable().scaledToFit().frame(width: 200, height: 200, alignment: .center)
                Spacer()
                VStack(alignment: .leading){
                    HStack {
                        Text("Book Html and Css book").lineLimit(2).padding([.top, .leading, .trailing]).font(.largeTitle).frame(width: 350, height: 114, alignment: .center)
                        Spacer()
                    }
                    HStack{
                        Text("By User Name").frame(width: 350, height: 30, alignment: .leading).padding(.horizontal, 30.0)
                        
                        
                    }
                    HStack {
                        Text("28 KWD").font(.system(size: 30)).frame(width: 350, height: 30, alignment: .leading).padding(.horizontal, 30.0)
                    }
                    Spacer()
                    HStack(alignment: .center){
                        Spacer()
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "phone")
                            Text("Cell")
                        }).padding(.horizontal, 100.0).padding(.vertical).background(Color(.blue)).cornerRadius(15)
                        Spacer()
                    }
                }.frame(width: 400, height: 500, alignment: .center).background(Color(#colorLiteral(red: 0.1106411591, green: 0.1057266816, blue: 0.1057857201, alpha: 1))).foregroundColor(.white)
                
                
            }
                
            
        }.onAppear(perform: {
            UITabBar.appearance().isHidden = true
        })
        
        
    }
}

struct BookDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailsView()
    }
}
