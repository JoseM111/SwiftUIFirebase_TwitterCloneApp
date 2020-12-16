//
//  SwiftUIFirebase_TwitterCloneAppApp.swift
//  SwiftUIFirebase_TwitterCloneApp
//
//  Created by Jose Martinez on 12/10/20.
//

import SwiftUI
import Firebase

@main
struct SwiftUIFirebase_TwitterCloneAppApp: App {
    /// ∆ Initializer
    //∆.................................
    init() {
        FirebaseApp.configure()
    }
    //∆.................................
    
    var body: some Scene {
        WindowGroup {
//            MainView()
            LoginView()
        }
    }
}
