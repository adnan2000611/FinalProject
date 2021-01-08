//
//  AddNewBookView.swift
//  MyBook
//
//  Created by Mac on 1/5/21.
//

import SwiftUI

struct AddNewBookView: View {
    @State var image : Image?
    @State private var showingImagePicker = false
    @State private var inputImage: UIImage?
    @State var bookName = ""
    @State var BookPrice = ""
    @State var theColor : Color = Color(#colorLiteral(red: 0.2317442894, green: 0.3535287976, blue: 0.6639168859, alpha: 1))
    var body: some View {
        VStack{
                
                
                if image != nil {
                    image?.resizable().scaledToFit().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                } else{
                    Image(systemName: "camera.circle.fill").resizable().scaledToFit().offset(y: -20).frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).onTapGesture {
                                self.showingImagePicker = true
                }
                    

          }
            
            HStack {
                Image(systemName: "book.circle.fill").resizable().scaledToFit().frame(width: 30, height: 30, alignment: .center)
                TextField("Book Name", text: $bookName)
            }.padding()
            HStack {
                Image(systemName: "dollarsign.circle.fill").resizable().scaledToFit().frame(width: 30, height: 30, alignment: .center)
                TextField("Book Price", text: $BookPrice)
            }.padding()
            Button(action: {
                books.append(Book(image: "", name: bookName, Price: Int(BookPrice) ?? 0))
                addTheBook()
            }, label: {
                Text("Add New Book").padding().foregroundColor(.white)
            }).background(theColor).cornerRadius(10).animation(.linear)
            
        }.padding()
        .sheet(isPresented: $showingImagePicker, onDismiss: loadImage) {
            ImagePicker(image: self.$inputImage)
        }
    }
    
    func addTheBook() {
        theColor = Color(#colorLiteral(red: 0, green: 0.8164184093, blue: 0, alpha: 1))
    }
    
    func loadImage() {
        guard let inputImage = inputImage else { return }
        image = Image(uiImage: inputImage)
    }
}

struct AddNewBookView_Previews: PreviewProvider {
    static var previews: some View {
        AddNewBookView()
    }
}
