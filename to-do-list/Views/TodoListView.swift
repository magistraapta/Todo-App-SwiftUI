//
//  TodoListView.swift
//  to-do-list
//
//  Created by magistra aptam on 15/07/23.
//

import SwiftUI

struct TodoListView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVStack{
                    ForEach(0...20, id: \.self){ item in
                        ListRowView(list: "makan", isCompleted: false)
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 4)
                    Spacer()
                }

            }
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
}

struct TodoListView_Previews: PreviewProvider {
    static var previews: some View {
        TodoListView()
    }
}
