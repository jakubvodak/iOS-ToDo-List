//
//  ContentView.swift
//  ToDo
//
//  Created by Jakub Vodak on 02.12.2021.
//

import SwiftUI

struct ContentView: View {

    // MARK: - Variables
    
    @Environment(\.managedObjectContext) var context
    
    @FetchRequest(
        entity: ToDoItem.entity(),
        sortDescriptors: [])
    var toDoItems: FetchedResults<ToDoItem>
    
    @State private var newItemName: String = ""
    @State private var showNewTask = false
    
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
                    self.showNewTask = true
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
            
            if showNewTask {
                BlankView(bgColor: .black)
                    .opacity(0.5)
                    .onTapGesture {
                        self.showNewTask = false
                    }
                
                NewToDoView(isShow: $showNewTask, name: "")
                    .transition(.move(edge: .bottom))
                    .animation(.interpolatingSpring(stiffness: 200.0, damping: 25.0, initialVelocity: 10.0))
            }
        }
    }
}

struct BlankView : View {

    var bgColor: Color
    var body: some View {
        VStack {
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(bgColor)
        .edgesIgnoringSafeArea(.all)
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
