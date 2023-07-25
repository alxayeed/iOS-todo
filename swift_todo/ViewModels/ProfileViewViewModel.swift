//
//  ProfileViewViewModel.swift
//  swift_todo
//
//  Created by alxayeed on 23/7/23.
//
import FirebaseAuth
import Foundation


class ProfileViewViewModel: ObservableObject{
    
    
    func logout(){
        do {
            try Auth.auth().signOut()
        } catch{
            print(error)
        }
    }
}
