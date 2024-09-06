//
//  ContentView.swift
//  SwiftUI-ToDoList
//
//  Created by 김두운 on 9/6/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var todoList: [Todo] = [
        Todo(title: "친구 만나기"),
        Todo(title: "과제 제출하기"),
        Todo(title: "푹쉬기")
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(todoList) { todo in
                    HStack {
                        todo.isCompleted ? Image(systemName: "circle.fill")
                            .foregroundStyle(Color.pink)
                            .onTapGesture {
                                todo.isCompleted.toggle()
                            } : Image(systemName: "circle")
                            .foregroundStyle(Color.pink)
                            .onTapGesture {
                                todo.isCompleted.toggle()
                            }
                        NavigationLink {
                            Text("다음 화면 입니다.")
                        } label: {
                            Text(todo.title)
                                .strikethrough(todo.isCompleted, color: Color.gray)
                                .foregroundStyle(todo.isCompleted ? Color.gray : Color.primary)
                        }
                    }
                }
            }
            .navigationTitle("ToDo🏓")
        }
    }
}

#Preview {
    ContentView()
}
