//
//  TodoListView.swift
//  swift_todo
//
//  Created by alxayeed on 23/7/23.
//

import FirebaseFirestoreSwift
import SwiftUI

struct TodoListView: View {
    @StateObject var viewModel : TodoListViewViewModel
    @FirestoreQuery var items: [TodoItemModel]
    
    init(userId: String){
        self._items = FirestoreQuery(
            collectionPath: "users/\(userId)/todos")
        
        self._viewModel = StateObject(
            wrappedValue: TodoListViewViewModel(userId: userId)
        )
    }
    
    var body: some View {
       
        
        
        NavigationView{
            VStack{
                // List of Todo items
                List(items){ item in
                    TodoItemView(todoItem: item)
                        .swipeActions{
                            Button(role: .destructive){
                                viewModel.delete(itemId: item.id)
                            } label: {
                                Image(systemName: "delete.left.fill")
                                    .foregroundColor(Color.red)
                            }
                        }
                }
                .listStyle(InsetGroupedListStyle())
            }
                .navigationTitle("Todo List")
                .toolbar{
                    Button{
                        //Action
                        viewModel.isPresented = true
            
                    } label: {
                        Image(systemName: "plus.circle.fill").resizable().frame(width: 30, height: 30)
                    }
                }
                .sheet(isPresented: $viewModel.isPresented){
                    TodoNewItemView(newItemPresented: $viewModel.isPresented)
                }
        }
    }
}

struct TodoListView_Previews: PreviewProvider {
    static var previews: some View {
        TodoListView(userId: "iKCBNk4NftW1gwnmwPLfoJiTPXV2")
    }
}
