//
//  TodoListView.swift
//  swift_todo
//
//  Created by alxayeed on 23/7/23.
//

import SwiftUI

struct TodoListView: View {
    var body: some View {
        NavigationView{
            VStack{}
                .navigationTitle("Todo List")
                .toolbar{
                    Button{
                        //Action
                    } label: {
                        Image(systemName: "plus")
                    }
                }
        }
    }
}

struct TodoListView_Previews: PreviewProvider {
    static var previews: some View {
        TodoListView()
    }
}
