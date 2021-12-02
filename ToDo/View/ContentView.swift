//
//  ContentView.swift
//  ToDo
//
//  Created by Jakub Vodak on 02.12.2021.
//

import SwiftUI

struct ContentView: View {

    // MARK: - Variables
    
    var toDoItems: [ToDoItem] = [ToDoItem(name: "Buy Milk"), ToDoItem(name: "Sing a song")]
    
    // MARK: - View
    
    var body: some View {
        ZStack {
            VStack {
                Text("My Todos")
                    .font(.system(size: 26, weight: .black, design: .rounded))
                
                List(toDoItems) { toDoItem in
                    ToDoListRow(toDoItem:toDoItem)
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
            
            if toDoItems.count == 0 {
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
