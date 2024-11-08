//
//  ContentView.swift
//  Todo List Demo
//
//  Created by YJ Soon on 4/11/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var todos = [
        Todo(name: "Learn SwiftUI", done: true),
        Todo(name: "Build an iOS app"),
        Todo(name: "Learn SwiftUI again", subtitle: "This time it's more fun"),
        Todo(name: "Build an iOS app again"),
        Todo(name: "Learn SwiftUI again again"),
    ]
    @State private var showAddSheet = false
    
    var body: some View {
        NavigationStack {
            List($todos, editActions: [.all]) { $todo in
                TodoRowView(todo: $todo)
            }
            .navigationTitle("Todos")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add", systemImage: "plus") {
                        showAddSheet = true
                    }
                }
            }
            .sheet(isPresented: $showAddSheet) {
                AddTodoView(sourceArray: $todos)
                    .presentationDetents([.medium])
            }
        }
    }
}

#Preview {
    ContentView()
}

