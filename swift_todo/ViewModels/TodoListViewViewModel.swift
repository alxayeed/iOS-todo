//
//  TodoListViewViewModel.swift
//  swift_todo
//
//  Created by alxayeed on 23/7/23.
//
import FirebaseFirestore
import Foundation

class TodoListViewViewModel: ObservableObject{
    @Published var isPresented = false
    private let userId: String
    
    init(userId: String){
        self.userId = userId
    }
    
    func delete(itemId: String){
        let db = Firestore.firestore()
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(itemId)
            .delete()
        
    }
}
