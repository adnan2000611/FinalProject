//
//  AddNewBookView.swift
//  FirebaseTemplate
//
//  Created by Mac on 1/10/21.
//  Copyright © 2021 OMAR. All rights reserved.
//

import SwiftUI

struct AddNewBookView: View {
    @EnvironmentObject var bookEnv : BookEnv
    @State var image : Image?
    @State private var showingImagePicker = false
    @State private var inputImage: UIImage?
    @State var bookName = ""
    @State var BookPrice = ""
    @State var theColor : Color = Color(#colorLiteral(red: 0.3879593015, green: 0.2983288169, blue: 0.7801620364, alpha: 1))
    
    var body: some View {
        VStack{
                
                
                if image != nil {
                    image?.resizable().scaledToFit().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100, alignment: .center)
                } else{
                    Image(systemName: "camera.circle.fill").resizable().scaledToFit().offset(y: -20).frame(width: 100, height: 100, alignment: .center).onTapGesture {
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
//                books.append(Book(image: "", name: bookName, Price: Int(BookPrice) ?? 0))
                addTheBook()
            }, label: {
                Text("Add New Book").padding().foregroundColor(.white)
            }).background(theColor).cornerRadius(10).animation(.linear)
            
        }
        .padding()
        .sheet(isPresented: $showingImagePicker, onDismiss: loadImage) {
            ImagePicker(image: self.$inputImage)
        }
        .alert(isPresented: $bookEnv.alertShown, content: {
            Alert(title: Text(bookEnv.alertMessage))
        })
        
        
    }
    func addTheBook() {
        guard let price = Int(BookPrice) else {
            bookEnv.showAlert(alertType: .incompleteForm)
            return
        }
        let book = Book(image: bookName, name: bookName, price: price)
        Networking.uploadImage(path: "Image/Books", imageName: bookName, image: inputImage!, success: {
            print("Image Upload succes")
        })
        bookEnv.addBook(book: book)
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
