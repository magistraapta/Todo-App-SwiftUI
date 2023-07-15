//
//  AddTaskView.swift
//  to-do-list
//
//  Created by magistra aptam on 15/07/23.
//

import SwiftUI

struct AddTaskView: View {
    @State var text: String = " "
    var body: some View {
        VStack{
            TextArea($text, placeholder: "what's on your thoughts?")
            Spacer()
            Button {
                //code
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
}

struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskView()
    }
}
