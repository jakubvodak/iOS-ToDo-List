//
//  ToDoItem.swift
//  ToDo
//
//  Created by Jakub Vodak on 02.12.2021.
//

import Foundation
import CoreData

public class ToDoItem: NSManagedObject, Identifiable {
    @NSManaged public var id: UUID
    @NSManaged public var name: String
    @NSManaged public var isComplete: Bool
}
