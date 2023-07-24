//
//  ContentView.swift
//  swift_todo
//
//  Created by alxayeed on 23/7/23.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    var body: some View {
        VStack {
            if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty{
                TabView{
                    TodoListView()
                        .tabItem{
                            Label("Todo",systemImage: "house")
                        }
                    
                    ProfileView()
                        .tabItem{
                            Label("Profile", systemImage: "person.circle")
                        }
                }
            } else{
                LoginView()
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
