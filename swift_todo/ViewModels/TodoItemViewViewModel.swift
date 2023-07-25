//
//  TodoItemViewViewModel.swift
//  swift_todo
//
//  Created by alxayeed on 23/7/23.
//

import FirebaseFirestore
import Foundation

class TodoItemViewViewModel: ObservableObject {
    init(){
    }
    
    func changeStatus(userId: String, item: TodoItemModel){
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(item.id)
            .updateData([
                "isDone": !item.isDone
            ])
    }
}
