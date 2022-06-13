//
//  ToDoList2App.swift
//  ToDoList2
//
//  Created by Grizzowl on 2022/05/23.
//

import SwiftUI

@main
struct ToDoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
   
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
            ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
            
        }
    }
}
