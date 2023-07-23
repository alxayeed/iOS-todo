//
//  swift_todoApp.swift
//  swift_todo
//
//  Created by Bizzntek Ltd on 23/7/23.
//

import FirebaseCore
import SwiftUI

@main
struct swift_todoApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
