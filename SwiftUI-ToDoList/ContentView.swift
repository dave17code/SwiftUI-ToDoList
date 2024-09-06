//
//  ContentView.swift
//  SwiftUI-ToDoList
//
//  Created by 김두운 on 9/6/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                HStack {
                    Image(systemName: "circle")
                        .foregroundStyle(Color.pink)
                    NavigationLink {
                        Text("다음 화면 입니다.")
                    } label: {
                        Text("투두1")
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
