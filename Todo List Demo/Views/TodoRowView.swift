//
//  ExtractedView.swift
//  Todo List Demo
//
//  Created by YJ Soon on 4/11/24.
//

import SwiftUI

struct TodoRowView: View {
    
    @Binding var todo: Todo
    
    var body: some View {
        NavigationLink {
            TodoDetailView(todo: $todo)
        } label: {
            HStack {
                Image(systemName: todo.done ? "checkmark.circle.fill" : "circle")
                    .onTapGesture {
                        todo.done.toggle()
                    }
                VStack(alignment: .leading) {
                    Text(todo.name)
                    if !todo.subtitle.isEmpty {
                        Text(todo.subtitle)
                            .font(.caption)
                    }
                }
            }
        }
    }
}
