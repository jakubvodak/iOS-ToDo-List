//
//  ToDoItem.swift
//  ToDo
//
//  Created by Jakub Vodak on 02.12.2021.
//

import Foundation

class ToDoItem: ObservableObject, Identifiable {
    
    // MARK: - Variables
    
    var id = UUID()
    @Published var name: String
    @Published var isComplete: Bool
    
    // MARK: - Object Lifecycle
    
    init(name: String, isComplete: Bool = false) {
        self.name = name
        self.isComplete = isComplete
    }
    
}
