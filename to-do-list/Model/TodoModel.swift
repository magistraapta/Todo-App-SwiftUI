//
//  TodoModel.swift
//  to-do-list
//
//  Created by magistra aptam on 15/07/23.
//

import Foundation

struct TodoModel: Identifiable{
    var id : String
    var task: String
    var status: Bool
    
    init(id: String = UUID().uuidString, task: String, status: Bool) {
        self.id = id
        self.task = task
        self.status = status
    }
    
    func updateCompletion() -> TodoModel{
        return TodoModel(id: id, task: task, status: !status)
    }
}
