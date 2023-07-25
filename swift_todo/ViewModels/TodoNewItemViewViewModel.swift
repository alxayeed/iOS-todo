//
//  TodoNewItemViewViewModel.swift
//  swift_todo
//
//  Created by alxayeed on 23/7/23.
//

import Foundation

class TodoNewItemViewViewModel: ObservableObject{
    @Published var title = ""
    @Published var dueDate = Date()
    @Published var showAlert = false
    @Published var alertMessage = ""
    
    init(){}
    
    func save(){
        print(title)
        print(dueDate)
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
