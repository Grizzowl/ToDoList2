//
//  ItemModel.swift
//  ToDoList2
//
//  Created by Grizzowl on 2022/05/23.
//


import Foundation


    // This is the item model that is sets up a blueprint for each item that is created in the to do list app.

struct ItemModel: Identifiable, Codable {
    let id: String
    let title: String
    let day: String
    let isCompleted: Bool
    
    
    //Initializer is set up to give a new ID to a new item or we can add one directly,
    //This means we can keep the items original ID when updating the ItemModel properties
    
    init(id: String = UUID().uuidString, title: String, day: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.day = day
        self.isCompleted = isCompleted
        
    }
    
    //This Function is made to update the ItemModel, when called it will return the opposite of the current state of the isCompleted Bool
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, day: day, isCompleted: !isCompleted)
    }
    
}





