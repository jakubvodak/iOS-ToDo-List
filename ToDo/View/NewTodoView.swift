//
//  NewToDoView.swift
//  ToDo
//
//  Created by Jakub Vodak on 02.12.2021.
//

import SwiftUI

struct NewToDoView: View {
 
    // MARK: - Variables
    
    @Binding var isShow: Bool
    @Binding var toDoItems: [ToDoItem]
    
    @State var name: String
    @State var isEditing = false
    
    // MARK: - View
    
    var body: some View {
        VStack {
            Spacer()
            VStack(alignment: .leading) {
                HStack {
                    Text("Add a new task")
                        .font(.system(.title, design: .rounded))
                        .bold()
                    
                    Spacer()
                    
                    Button(action: {
                        self.isShow = false
                        
                    }) {
                        Image(systemName: "xmark")
                            .foregroundColor(.black)
                            .font(.headline)
                    }
                }
                
                TextField("Enter the task description", text: $name, onEditingChanged: { (editingChanged) in
                    
                    self.isEditing = editingChanged
                    
                })
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding(.bottom)
                
                
                Button(action: {
                    
                    self.isShow = false
                    self.addTask(name: self.name)
                    
                }) {
                    Text("Save")
                        .font(.system(.headline, design: .rounded))
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.white)
                        .background(.blue)
                }
                .padding(.bottom)
            }
            .padding()
            .background(Color.white)
            .offset(y: isEditing ? -320 : 0)
        }
        .edgesIgnoringSafeArea(.bottom)
    }
    
    private func addTask(name: String, isComplete: Bool = false) {
        
        let task = ToDoItem(name: name, isComplete: isComplete)
        toDoItems.append(task)
    }
}

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(isShow: .constant(true), toDoItems: .constant([]), name: "")
    }
}
