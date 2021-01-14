//
//  ItemsEnv.swift
//  FirebaseTemplate
//
//  Created by Omar Alibrahim on 12/27/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import SwiftUI

class BookEnv: ObservableObject{
    let collectionName = "MyBooks"
    @Published var books: [Book] = []
    @Published var alertShown = false
    @Published var alertMessage = ErrorMessages.none.message
    
    func loadBooks(){
        Networking.getListOf(COLLECTION_NAME: collectionName) { (books: [Book]) in
            self.books = books
        }
    }
    
    func addBook(book: Book){
        Networking.createItem(book, inCollection: collectionName) {
            self.showAlert(alertType: .success)
        } fail: { (error) in
            self.showAlert(alertType: .fail)
        }
    }
    
    
    enum ErrorMessages{
        case success, fail, none, incompleteForm
        var message: String{
            switch self{
            case .success: return "تم إضافة الكتاب بنجاح"
            case .incompleteForm: return "قم بتعبئة جميع البيانات بشكل صحيح"
            case .fail: return "لم يتم إضافة العنصر، حاول مرة أخرى"
            case .none: return ""
            }
        }
    }
    
    func showAlert(alertType: ErrorMessages){
        self.alertMessage = alertType.message
        self.alertShown = true
    }

    
}
