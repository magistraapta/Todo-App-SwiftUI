//
//  TextArea.swift
//  to-do-list
//
//  Created by magistra aptam on 15/07/23.
//

import SwiftUI

struct TextArea: View {
    @Binding var text: String
    let placeholder: String
    
    init(_ text: Binding<String>, placeholder: String) {
          self._text = text
          self.placeholder = placeholder
          UITextView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        ZStack{
            if text.isEmpty{
                Text(placeholder)
                    .foregroundColor(Color.black)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 12)
                    .border(.blue)
            }
            TextEditor(text: $text)
                .padding(4)
        }
        .font(.body)
    }
}


