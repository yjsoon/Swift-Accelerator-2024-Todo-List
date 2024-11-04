//
//  Todo.swift
//  Todo List Demo
//
//  Created by YJ Soon on 4/11/24.
//

import SwiftUI

struct Todo: Identifiable {
    var id = UUID()
    var name: String
    var done = false
}
