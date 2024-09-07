//
//  ToDoDetailView.swift
//  SwiftUI-ToDoList
//
//  Created by Dave on 9/6/24.
//

import SwiftUI

struct ToDoDetailView: View {
    @State var todo: Todo
    
    var body: some View {
        VStack {
            TextField("투두 타이틀", text: $todo.title)
                .padding(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 2)
                )
            TextEditor(text: $todo.description)
                .padding(10)
                .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray, lineWidth: 2)
                )
        }
        .padding()
        .navigationTitle("Edit Task📝")
    }
}

#Preview {
    ToDoDetailView(todo: Todo(title: "2번째 화면의 투두"))
}
