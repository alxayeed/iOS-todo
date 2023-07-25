//
//  ContentView.swift
//  swift_todo
//
//  Created by alxayeed on 23/7/23.
//
import FirebaseAuth
import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    var body: some View {
        VStack {
            if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty{
                accountView
            } else{
                LoginView()
            }
        }
    }
    
    //TODO: @ViewBuilder
    @ViewBuilder
    var accountView: some View {
        TabView{
            TodoListView(userId: viewModel.currentUserId)
                .tabItem{
                    Label("Todo",systemImage: "house")
                }
            
            ProfileView()
                .tabItem{
                    Label("Profile", systemImage: "person.circle")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
