//
//  TodoListView.swift
//  to-do-list
//
//  Created by magistra aptam on 15/07/23.
//

import SwiftUI

struct TodoListView: View {
    @EnvironmentObject var task: TodoViewModel
    var body: some View {
        List{
            ForEach(task.todo){ item in
                ListRowView(task: item)
                    .onTapGesture {
                        withAnimation (.linear) {
                            task.editTask(item: item)
                        }
                    }
            }
            .onDelete(perform: task.remove)
        }
        
        .listStyle(.plain)
        .navigationTitle("My List")
        .navigationBarTitleDisplayMode(.automatic)
        .toolbar{
            ToolbarItem{
                NavigationLink{
                    AddTaskView()
                } label: {
                    Image(systemName: "plus")
                }

            }
        }
        
    }
    
}

struct TodoListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            TodoListView()
        }
        .environmentObject(TodoViewModel())
        
    }
}
