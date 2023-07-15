//
//  ListRowView.swift
//  to-do-list
//
//  Created by magistra aptam on 15/07/23.
//

import SwiftUI

struct ListRowView: View {
    var list: String
    @State var isCompleted: Bool = false
    var body: some View {
        
        HStack(alignment: .top, spacing: 12){
            Button {
                completeTask()
            } label: {
                Image(systemName: isCompleted ? "checkmark.circle.fill" : "checkmark.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24)
                    .foregroundColor(isCompleted ? .green : .red)
            }
            Text(list)
                .font(.title2)
            Spacer()
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 4)
        
    }
    
    func completeTask(){
        if isCompleted == true{
            isCompleted = false
        } else {
            isCompleted = true
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(list: "your list", isCompleted: false)
    }
}
