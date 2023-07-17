//
//  TodoViewModel.swift
//  to-do-list
//
//  Created by magistra aptam on 15/07/23.
//

import Foundation

class TodoViewModel: ObservableObject {
    @Published var todo: [TodoModel] = []
    
    init(){
        getTask()
    }
    func getTask(){
        let task1 = TodoModel(task: "learn swiftUI", status: false)
        let task2 = TodoModel(task: "learn core data", status: false)
        let task3 = TodoModel(task: "learn node js", status: false)
        
        todo.append(task1)
        todo.append(task2)
        todo.append(task3)
    }
    
    func addTask(input: String){
        let newTask = TodoModel(task: input, status: false)

        todo.append(newTask)
    }
    func remove(index: IndexSet){
        todo.remove(atOffsets: index)
    }
    
    func editTask(item: TodoModel){
        if let index = todo.firstIndex(where: {$0.id == item.id}){
            todo[index] = item.updateCompletion()
        }
    }
}
