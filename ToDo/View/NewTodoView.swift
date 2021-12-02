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
        Text("Hi")
    }
}
