//
//  ListRowView.swift
//  ToDoList
//
//  Created by Grizzowl on 2022/05/17.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    let day: ItemModel
    
    var body: some View {
        
        VStack {
            
            HStack{
                Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                    .foregroundColor(item.isCompleted ? .green : .red)
                Text(item.title)
                
                Spacer()
            }
            .font(.title2)
        .padding(.vertical, 8)
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    
    static var item1 = ItemModel(title: "First item!", day: "General", isCompleted: false)
    static var item2 = ItemModel(title: "Second Item.", day: "Monday", isCompleted: true)
    
    static var previews: some View {
        Group {
            ListRowView(item: item1, day: item1)
            ListRowView(item: item2, day: item2)
        }
        .previewLayout(.sizeThatFits)
    }
}
