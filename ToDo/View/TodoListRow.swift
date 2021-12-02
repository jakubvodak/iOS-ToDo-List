//
//  TodoListRow.swift
//  ToDo
//
//  Created by Jakub Vodak on 02.12.2021.
//

import SwiftUI

struct TodoListRow: View {
    @ObservedObject var todoItem: ToDoItem
    
    var body: some View {
        Toggle(isOn: self.$todoItem.isComplete) {
            HStack {
                Text(self.todoItem.name)
                    .strikethrough(self.todoItem.isComplete, color: .black)
                    .font(.system(size: 16, weight: .semibold, design: .rounded))
                    .animation(.default)
            }
        }.toggleStyle(CheckboxStyle())
    }
}
