//
//  TodoDetailView.swift
//  Todo List Demo
//
//  Created by YJ Soon on 4/11/24.
//

import SwiftUI

struct TodoDetailView: View {
    
    @Binding var todo: Todo
    
    var body: some View {
        Form {
            TextField("Title", text: $todo.name)
            TextField("Subtitle", text: $todo.subtitle)
            Toggle(isOn: $todo.done) {
                Text("Done?")
            }
            
        }
    }
}

#Preview {
    @Previewable @State var todo = Todo(name: "Demo todo")
    TodoDetailView(todo: $todo)
}
