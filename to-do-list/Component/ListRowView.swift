//
//  ListRowView.swift
//  to-do-list
//
//  Created by magistra aptam on 15/07/23.
//

import SwiftUI

struct ListRowView: View {
    let task: TodoModel
    var body: some View {
        
        HStack(alignment: .center, spacing: 12){
            Image(systemName: task.status ? "checkmark.circle.fill" : "checkmark.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 24)
                .foregroundColor(task.status ? .green : .red)
            Text(task.task)
                .font(.headline)
            Spacer()
        }
      
        
    }
}

struct ListRowView_Previews: PreviewProvider {
    
    static var task1 = TodoModel(task: "test", status: false)
    static var task2 = TodoModel(task: "test", status: false)

    static var previews: some View {
        Group{
            ListRowView(task: task1)
            ListRowView(task: task2)
        }
        .previewLayout(.sizeThatFits)
        
    }
}
