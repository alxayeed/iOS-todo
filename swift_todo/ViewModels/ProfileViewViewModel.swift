//
//  ProfileViewViewModel.swift
//  swift_todo
//
//  Created by alxayeed on 23/7/23.
//
import FirebaseAuth
import FirebaseFirestore
import Foundation


class ProfileViewViewModel: ObservableObject{
    @Published var user : UserModel? = nil
    
    func fetchUserData(){
        guard let userId = Auth.auth().currentUser?.uid else{
            return
        }
        
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .getDocument{snapShot, error in
                guard let data = snapShot?.data(), error == nil else{
                    return
                }
                
                DispatchQueue.main.async {
                    self.user = UserModel(
                        id: data["id"] as? String ?? "" ,
                        name: data["name"] as? String ?? "",
                        email: data["email"] as? String ?? "",
                        joined: data["joined"] as? TimeInterval ?? 0
                        )
                }
            }
    }
    
    
    func logout(){
        do {
            try Auth.auth().signOut()
        } catch{
            print(error)
        }
    }
}
