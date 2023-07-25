//
//  TodoItemView.swift
//  swift_todo
//
//  Created by alxayeed on 23/7/23.
//

import SwiftUI

struct TodoItemView: View {
    let todoItem: TodoItemModel
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text(todoItem.title)
                    .font(.body)
                Text("\(Date(timeIntervalSince1970: todoItem.dueDate).formatted(date: .abbreviated, time: .shortened))")
                    .font(.footnote)
                    .foregroundColor(Color(.secondaryLabel))
            }
            
            Spacer()
            
            Button{
                
            } label: {
                Image(systemName: todoItem.isDone ? "checkmark.circle.fill" : "circle")
            }
        }
    }
}

struct TodoItemView_Previews: PreviewProvider {
    static var previews: some View {
        TodoItemView(todoItem: .init(
            id: "abc123",
            title: "Dummy Item",
            dueDate: Date.now.timeIntervalSince1970,
            createdAt: Date.now.timeIntervalSince1970,
            isDone: true))
    }
}
