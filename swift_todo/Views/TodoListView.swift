//
//  TodoListView.swift
//  swift_todo
//
//  Created by alxayeed on 23/7/23.
//

import SwiftUI

struct TodoListView: View {
    @StateObject var viewModel = TodoListViewViewModel()
    var body: some View {
        NavigationView{
            VStack{}
                .navigationTitle("Todo List")
                .toolbar{
                    Button{
                        //Action
                        viewModel.isPresented = true
            
                    } label: {
                        Image(systemName: "plus")
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
        TodoListView()
    }
}
