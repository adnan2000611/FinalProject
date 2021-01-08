//
//  MyBookApp.swift
//  MyBook
//
//  Created by Mac on 12/30/20.
//

import SwiftUI
import Firebase

@main
struct MyBookApp: App {
    
    init() {
     FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NewUser()
        }
    }
}
