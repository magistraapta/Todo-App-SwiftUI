//
//  AddTaskView.swift
//  to-do-list
//
//  Created by magistra aptam on 15/07/23.
//

import SwiftUI

struct AddTaskView: View {
    @Environment(\.dismiss) var dismiss
    @State var text: String = " "
    @EnvironmentObject var task: TodoViewModel
    var body: some View {
        VStack{
            TextArea($text, placeholder: "what's on your thoughts?")
            Spacer()
            

            Button {
                saveTask()
                text = ""
                dismiss()
            } label: {
                HStack{
                    Spacer()
                    Text("Submit")
                        .font(.title3).bold()
                        .foregroundColor(.white)
                        .padding()
                        .cornerRadius(10)
                    Spacer()
                }
                .background(Color.blue)
                .cornerRadius(10)
                .padding()
                
            }

        }
    }
    func saveTask(){
        task.addTask(input: text)
    }
}

struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AddTaskView()
        }
        .environmentObject(TodoViewModel())
        
    }
}
