//
//  LoginViewViewModel.swift
//  swift_todo
//
//  Created by alxayeed on 23/7/23.
//

import Foundation
import FirebaseAuth

class LoginViewViewModel: ObservableObject{
    //TODO:ObservableObject, Published
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init(){}
    
    private func validate()-> Bool {
        errorMessage = ""
        //perform input validation
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else{
            
            errorMessage = "Please fill up all input fields."
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please give valid email."
            return false
        }
        
       return true
    }
    
    func login(){
        guard validate() else{
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password)
    }
}
