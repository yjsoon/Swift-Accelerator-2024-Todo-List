//
//  ContentView.swift
//  Todo List Demo
//
//  Created by YJ Soon on 4/11/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var todos = [
        Todo(name: "Learn SwiftUI"),
        Todo(name: "Build an iOS app"),
        Todo(name: "Learn SwiftUI again"),
        Todo(name: "Build an iOS app again"),
    ]
    
    var body: some View {
        NavigationStack {
            List(todos) { todo in
                Text(todo.name)
            }
            .navigationTitle("Todos")
        }
    }
}

#Preview {
    ContentView()
}
