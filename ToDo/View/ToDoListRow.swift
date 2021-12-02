//
//  ToDoListRow.swift
//  ToDo
//
//  Created by Jakub Vodak on 02.12.2021.
//

import SwiftUI

struct ToDoListRow: View {
    @ObservedObject var toDoItem: ToDoItem
    
    var body: some View {
        Toggle(isOn: self.$toDoItem.isComplete) {
            HStack {
                Text(self.toDoItem.name)
                    .strikethrough(self.toDoItem.isComplete, color: .black)
                    .font(.system(size: 16, weight: .semibold, design: .rounded))
                    .animation(.default)
            }
        }.toggleStyle(CheckboxStyle())
    }
}
