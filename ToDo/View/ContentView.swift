//
//  ContentView.swift
//  ToDo
//
//  Created by Jakub Vodak on 02.12.2021.
//

import SwiftUI

struct ContentView: View {

    // MARK: - Variables
    
    var todoItems: [ToDoItem] = [ToDoItem(name: "Buy Milk"), ToDoItem(name: "Sing a song")]
    
    // MARK: - View
    
    var body: some View {
        ZStack {
            VStack {
                Text("My Todos")
                    .font(.system(size: 26, weight: .black, design: .rounded))
                
                List(todoItems) { todoItem in
                    TodoListRow(todoItem:todoItem)
                }
                
                Button(action: {
                    
                }) {
                    Text("New Todo")
                        .padding(10)
                        .background(.blue)
                        .foregroundColor(.white)
                        .font(.system(size: 16, weight: .semibold, design: .rounded))
                        .cornerRadius(10)
                }
                .padding()
            }
            
            if todoItems.count == 0 {
                EmptyListView()
            }
        }
    }
}

struct EmptyListView: View {
    var body: some View {
        Text("No Todos\nHave some rest!")
            .font(.system(size: 12, weight: .semibold, design: .rounded))
            .multilineTextAlignment(.center)
    }
}

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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
