//
//  BookDetailsView.swift
//  MyBook
//
//  Created by Mac on 1/8/21.
//

import SwiftUI

struct BookDetailsView: View {
    let book : Book
    let numberString = "111-222-3334"
    var body: some View {
        
            ZStack{
                Image(book.image).resizable().ignoresSafeArea().blur(radius: 3.0)
                Color.black.ignoresSafeArea().opacity(0.9)
                VStack{
                    Spacer()
                Image(book.image).resizable().scaledToFit().frame(width: 200, height: 200, alignment: .center)
                
                    Text(book.name).foregroundColor(.white).padding()
                
                    Text("\(book.Price) KWD").foregroundColor(.white)
                    
                    HStack{
                        
                        Button(action: {
                            let telephone = "tel://"
                                let formattedString = telephone + numberString
                                guard let url = URL(string: formattedString) else { return }
                                UIApplication.shared.open(url)
                        }, label: {
                            Image(systemName: "phone").foregroundColor(.white)
                            Text("Call").foregroundColor(.white)
                        }).padding().background(Color(#colorLiteral(red: 0, green: 0.8304183483, blue: 0, alpha: 1))).cornerRadius(15)
                    }.padding()
                    Spacer()
                }
            
            
        }
    }
}

struct BookDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailsView(book: Book(image: "HTML&CSS", name: "Book1", Price: 212))
    }
}
