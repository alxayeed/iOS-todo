//
//  RegisterViewViewModel.swift
//  swift_todo
//
//  Created by alxayeed on 23/7/23.
//
import FirebaseFirestore
import FirebaseAuth
import Foundation

class RegisterViewViewModel: ObservableObject{
    @Published var fullName = ""
    @Published var email = ""
    @Published var password = ""
    
    init(){}
    
    private func validate()-> Bool{
        guard !fullName.trimmingCharacters(in: .whitespaces).isEmpty,
              !fullName.trimmingCharacters(in: .whitespaces).isEmpty,
              !fullName.trimmingCharacters(in: .whitespaces).isEmpty else {
                    return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            return false
        }
        
        guard password.count > 8 else{
            return false
        }
        
        return true
    }
    
    func register(){
        guard validate() else {
            return
        }
        
        // register
        Auth.auth().createUser(withEmail: email, password: password){[weak self] result, error in
            guard let userId =  result?.user.uid else{
                return
            }
            self?.insertUserRecord(id: userId)
        }
    }
    
    private func insertUserRecord(id: String){
        let newUser = UserModel(
            id: id,
            name: fullName,
            email: email,
            joined: Date().timeIntervalSince1970)
        
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(id)
            .setData(newUser.asDictionary())
        
        
    }
}
