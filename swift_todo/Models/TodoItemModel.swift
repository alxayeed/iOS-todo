//
//  TodoItemModel.swift
//  swift_todo
//
//  Created by Bizzntek Ltd on 25/7/23.
//

import Foundation

struct TodoItemModel: Codable, Identifiable{
    //TODO: Codable, Identifiable
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createdAt: TimeInterval
    var isDone: Bool
    
    mutating func setIsDone(_ state: Bool){
        isDone = state
    }
}
