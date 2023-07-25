//
//  TodoItemViewViewModel.swift
//  swift_todo
//
//  Created by alxayeed on 23/7/23.
//
import FirebaseAuth
import FirebaseFirestore
import Foundation

class TodoItemViewViewModel: ObservableObject {
    init(){
    }
    
    func changeStatus(item: TodoItemModel){
        guard let userId = Auth.auth().currentUser?.uid else{
            return
        }
        
        var itemCopy = item
        itemCopy.setIsDone(!item.isDone)
        
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}
