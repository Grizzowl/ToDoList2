//
//  ItemModel.swift
//  ToDoList2
//
//  Created by Grizzowl on 2022/05/23.
//


import Foundation

struct ItemModel: Identifiable, Codable {
    let id: String
    let title: String
    let day: String
    let isCompleted: Bool
    
    
    init(id: String = UUID().uuidString, title: String, day: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.day = day
        self.isCompleted = isCompleted
        
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, day: day, isCompleted: !isCompleted)
    }
    
}





