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
                VStack{
                    Image("book1").resizable().scaledToFit().frame(width: 100, height: 100, alignment: .center)
                    Text("the book")
                }
                Spacer()
                VStack{
                    Image("book1").resizable().scaledToFit().frame(width: 100, height: 100, alignment: .center)
                    Text("not the book")
                }
            }.padding()
            HStack{
                VStack{
                    Image("book1").resizable().scaledToFit().frame(width: 100, height: 100, alignment: .center)
                    Text("the book")
                }
                Spacer()
                VStack{
                    Image("book1").resizable().scaledToFit().frame(width: 100, height: 100, alignment: .center)
                    Text("not the book")
                }
            }.padding()
        }
    }
}

struct AllBookView_Previews: PreviewProvider {
    static var previews: some View {
        AllBookView()
    }
}
