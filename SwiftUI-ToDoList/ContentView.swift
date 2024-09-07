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
    
    func addTodo() {
        withAnimation {
            let newTodo = Todo(title: "새로운 투두")
            todoList.append(newTodo)
        }
    }
    
    func deleteTodo(indexSet: IndexSet) {
        withAnimation {
            for index in indexSet {
                todoList.remove(at: index)
            }
        }
    }
    
    var body: some View {
        NavigationStack {
            Divider()
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
                            ToDoDetailView(todo: todo)
                        } label: {
                            Text(todo.title)
                                .strikethrough(todo.isCompleted, color: Color.gray)
                                .foregroundStyle(todo.isCompleted ? Color.gray : Color.primary)
                        }
                    }
                    .listRowSeparator(.hidden)
                }
                .onDelete(perform: deleteTodo)
            }
            .listStyle(.plain)
            .navigationTitle("ToDo🏓")
            .toolbar {
                ToolbarItem {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: addTodo, label: {
                        Image(systemName: "plus")
                    })
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
