//
//  to_do_listApp.swift
//  to-do-list
//
//  Created by magistra aptam on 07/07/23.
//

import SwiftUI

@main
struct to_do_listApp: App {
    
    @StateObject var todoViewModel: TodoViewModel = TodoViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ContentView()
            }
            .environmentObject(todoViewModel)
        }
    }
}
