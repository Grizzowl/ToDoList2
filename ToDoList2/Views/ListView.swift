//
//  ListView.swift
//  ToDoList
//
//  Created by Grizzowl on 2022/05/17.
//
import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        ZStack {
            if listViewModel.items.isEmpty {
                NoItemsView()
                    .transition(AnyTransition.opacity.animation(.easeIn))
            } else { //update view to shows days of the week
                List{
                    //Find a way to add the others days in View then add relevant data into them
                    // Then make the days into collapsible menu
                    Text("General")
                    
                    //Might need to move the loop then call the filtered results
                    ForEach(listViewModel.items) { item in
                        
                        ListRowView (item: item, day: item)
                       
                            .onTapGesture {
                                withAnimation(.linear) {
                                    listViewModel.updateItem(item: item)
                                    
                                }
                            }
                    }
                   .onDelete(perform: listViewModel.deleteItem)
                   .onMove(perform: listViewModel.moveItem)
                }
                
                
                .listStyle(PlainListStyle())
            }
            
        }
       
        .navigationTitle("Todo List 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: WeekdayMenuController())
        )
        
    }
    
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        ListView()
        }
        .environmentObject(ListViewModel())
    }
}
    




