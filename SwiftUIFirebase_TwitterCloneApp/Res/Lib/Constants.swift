//
//  Constants.swift
//  SwiftUIFirebase_TwitterCloneApp
//
//  Created by Jose Martinez on 12/19/20.
//

import Firebase

///∆ .................................
// MARK:  • GLOBAL-CONSTANTS--> Constants for creating collections in firestore
let COLLECTION_USERS_FIRESTORE = Firestore.firestore().collection("users")
let COLLECTION_FOLLOWERS_FIRESTORE = Firestore.firestore().collection("followers")
let COLLECTION_FOLLOWING_FIRESTORE = Firestore.firestore().collection("following")
let FIREBASE_AUTH = Auth.auth()
///  .................................
