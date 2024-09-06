//
//  Todo.swift
//  SwiftUI-ToDoList
//
//  Created by 김두운 on 9/6/24.
//

import Foundation

@Observable 
class Todo: Identifiable {
    let id: UUID
    var title: String
    var isCompleted: Bool
    var description: String
    
    init(title: String) {
        self.id = UUID()
        self.title = title
        self.isCompleted = false
        self.description = ""
    }
}
