//
//  Todo.swift
//  SwiftUI-ToDoList
//
//  Created by 김두운 on 9/6/24.
//

import Foundation
import SwiftData

@Model
class Todo: Identifiable {
    let id: UUID
    var title: String
    var isCompleted: Bool
    var detail: String
    
    init(title: String) {
        self.id = UUID()
        self.title = title
        self.isCompleted = false
        self.detail = ""
    }
}
