//
//  HomeView.swift
//  MyBook
//
//  Created by Mac on 1/5/21.
//

import SwiftUI


struct HomeView : View {
     @State var TheBooks = books
    var body : some View{
        NavigationView{
            
            
            ScrollView{
                VStack(alignment: .leading) {
                    ScrollView(.horizontal){
                    HStack{
                        Image("book1").resizable().frame(width: 100, height: 100, alignment: .center).scaledToFit().border(Color.black).cornerRadius(4.0).padding()
                        Image("book1").resizable().frame(width: 100, height: 100, alignment: .center).scaledToFit().border(Color.black).cornerRadius(4.0).padding()
                    }
                    }
                    
                        ForEach(TheBooks , id: \.self){ thebook in
                            
                            NavigationLink(
                                destination: BookDetailsView(book: thebook),
                                label: {
                                    BookRow(book: thebook)
                                })
                                    
                        }
                        
                    
                  Spacer()
                }.navigationBarTitle("Home", displayMode: .inline)
            }
        }
        
    }
    
}
struct BookRow: View {
    @State var book : Book
    var body: some View{
        
        
            HStack(alignment: .center){
                Image(book.image).resizable().scaledToFit().frame(width: 100 ,height: 100, alignment : .center).padding()
                Spacer()
                Text(book.name).padding(.vertical)
                Spacer()
                Spacer()
                Text("\(book.Price) KWD").padding()
            }.foregroundColor(.black)
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
