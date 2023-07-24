//
//  TodoListViewViewModel.swift
//  swift_todo
//
//  Created by alxayeed on 23/7/23.
//

import Foundation

class TodoListViewViewModel: ObservableObject{
    @Published var isPresented = false
    
    init(){
        isPresented = false
    }
}
