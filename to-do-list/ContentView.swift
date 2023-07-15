//
//  ContentView.swift
//  to-do-list
//
//  Created by magistra aptam on 07/07/23.
//

import SwiftUI

class TodoViewModel: ObservableObject {
    @Published var TodoContent: [TodoModel] = []
    
    func getContent(){
        let content1 = TodoModel(content: "buy some apples", status: false)
        let content2 = TodoModel(content: "learn swiftui", status: false)
        
        TodoContent.append(content1)
        TodoContent.append(content2)
    }
    
    func addContent(title: String){
        let newInput = TodoModel(content: title, status: false)
        TodoContent.append(newInput)
    }
    
    func delete(index: IndexSet){
        TodoContent.remove(atOffsets: index)
    }
}
struct ContentView: View {
    @ObservedObject var Todo: TodoViewModel = TodoViewModel()
    @State var input: String = ""
    var body: some View {
        NavigationView{
            VStack{
                List{
                    ForEach(Todo.TodoContent){ item in
                        HStack{
                            Image(systemName: item.status ? "circle.false" : "circle")
                                .foregroundColor(item.status ? .green : .red)
                            Text(item.content)
                        }
                    }
                    .onDelete(perform: Todo.delete)
                }
                VStack{
                    TextField("input here...", text: $input)
                    
                        .padding()
                        .textFieldStyle(.roundedBorder)
                    Button {
                        Todo.addContent(title: input)
                        input = ""
                    } label: {
                        ZStack{
                            Rectangle()
                                .frame(width: 350, height: 50)
                                .cornerRadius(10)
                            Text("Submit")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                        }
                        
                    }


                }
            }
            
            .navigationTitle("My To do list")
        }
        .onAppear{
            Todo.getContent()
        }
    }
}

struct TodoModel: Identifiable{
    var id = UUID()
    var content: String
    var status: Bool
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
