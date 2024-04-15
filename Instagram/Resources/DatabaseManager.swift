//
//  DatabaseManager.swift
//  Instagram
//
//  Created by Cemalhan Alptekin on 1.04.2024.
//

import Foundation
import FirebaseDatabase

public class DatabaseManager {
    
    static let shared = DatabaseManager()
    
    private let database = Database.database().reference()
    // MARK: - Public
    
    /// Check if username and email is avaliable
    /// - Parameters
    ///      - email: String representing email
    ///      - username: String representing username
    ///      - completion: async callback for result if database entry succeeded
    public func canCreateNewUser(with email: String, username: String, password: String, completion: (Bool) -> Void){
        completion(true)
    }
    /// Insert new user data to database
    /// - Parameters
    ///      - email: String representing email
    ///      - username: String representing username
    ///
    public func insertNewUser(with email: String, username:String, completion: @escaping(Bool) -> Void) {
        let key = email.safeDatabaseKey()
        database.child(key).setValue(["username":username]) {error, _ in
            if error == nil {
                //succeeded
                completion(true)
                return
            } else {
                //failed
                completion(false)
                return
            }
        }
    }
}
