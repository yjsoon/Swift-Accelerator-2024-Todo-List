//
//  AddTodoView.swift
//  Todo List Demo
//
//  Created by YJ Soon on 4/11/24.
//

import SwiftUI

struct AddTodoView: View {
    
    @State private var todoTitle = ""
    @State private var todoSubtitle = ""
    @Binding var sourceArray: [Todo]
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Form {
            Section("Info") {
                TextField("Title", text: $todoTitle)
                TextField("Subtitle", text: $todoSubtitle)
            }
            
            Section("Actions") {
                Button("Save") {
                    let todo = Todo(name: todoTitle, subtitle: todoSubtitle)
                    sourceArray.append(todo)
                    dismiss()
                }
                .disabled(todoTitle.isEmpty) // prevent saving if no title
                Button("Cancel", role: .destructive) {
                    dismiss()
                }
            }
        }
    }
}
#Preview {
    @Previewable @State var todos: [Todo] = []
    AddTodoView(sourceArray: $todos)
}
