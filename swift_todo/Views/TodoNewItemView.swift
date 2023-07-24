//
//  TodoNewItemView.swift
//  swift_todo
//
//  Created by alxayeed on 23/7/23.
//

import SwiftUI

struct TodoNewItemView: View {
    @StateObject var viewModel = TodoNewItemViewViewModel()
    @Binding var newItemPresented: Bool
    var body: some View {
        VStack{
            // Header
            Text("Add Item")
                .bold()
                .font(.system(size: 32))
            
            //Form
            Form{
                //Name
                TextField("Title", text: $viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                //Due date
                DatePicker("Due Date", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                // Save Button
                TLButton(
                    title: "Save",
                    backgroundColor: Color.indigo){
                        viewModel.save()
                        newItemPresented = false
                    }.padding()
            }
        }.padding(.top, 100)
    }
}

struct TodoNewItemView_Previews: PreviewProvider {
    static var previews: some View {
        //TODO: Binding() ??
        TodoNewItemView(newItemPresented: Binding(get: {
            return true
        }, set: {
            _ in
            
        }))
    }
}
