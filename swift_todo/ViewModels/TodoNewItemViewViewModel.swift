//
//  TodoNewItemViewViewModel.swift
//  swift_todo
//
//  Created by alxayeed on 23/7/23.
//
import FirebaseAuth
import FirebaseFirestore
import Foundation

class TodoNewItemViewViewModel: ObservableObject{
    @Published var title = ""
    @Published var dueDate = Date()
    @Published var showAlert = false
    @Published var alertMessage = ""
    
    init(){}
    
    func save(){
        // Check if can save or not
        guard canSave else{
            return
        }
        
        // Get the user id
        guard let userId = Auth.auth().currentUser?.uid else{
            return
        }
        
        // create a new id for the item
        let itemId = UUID().uuidString
        
        // save all inputs in the model
        let todoItem = TodoItemModel(
            id: itemId,
            title: title,
            dueDate: dueDate.timeIntervalSince1970,
            createdAt: Date.now.timeIntervalSince1970,
            isDone: false)
        
        //create db instance
        let db = Firestore.firestore()
        
        // save the model in the firestore as a sub-document of the user
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(itemId)
            .setData(todoItem.asDictionary())
    }
    
    var canSave: Bool {
        alertMessage = ""
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else{
            alertMessage = "Title can not be empty"
            return false
        }
        
        guard dueDate >= Date.now.addingTimeInterval(-86400) else{
            alertMessage = "Duedate can not be in the past"
            return false
        }
        
        return true
    }
    
    
}
