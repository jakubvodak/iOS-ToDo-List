//
//  ToDoListRow.swift
//  ToDo
//
//  Created by Jakub Vodak on 02.12.2021.
//

import SwiftUI

struct ToDoListRow: View {
    
    @Environment(\.managedObjectContext) var context
    
    @ObservedObject var toDoItem: ToDoItem
    
    var body: some View {
        Toggle(isOn: self.$toDoItem.isComplete) {
            HStack {
                Text(self.toDoItem.name)
                    .strikethrough(self.toDoItem.isComplete, color: .black)
                    .font(.system(size: 16, weight: .semibold, design: .rounded))
                    .animation(.default)
            }
        }
        .toggleStyle(CheckboxStyle())
        .onReceive(toDoItem.objectWillChange, perform: { _ in
            if self.context.hasChanges {
                try? self.context.save()
            }
        })
    }
}
