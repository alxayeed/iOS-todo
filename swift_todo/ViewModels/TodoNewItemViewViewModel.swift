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
    
    init(){}
    
    func save(){
        
    }
}
