//
//  ListView.swift
//  ToDoList
//
//  Created by Grizzowl on 2022/05/17.
//
import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    let weekdays = [
        "General",
        "Monday",
        "Tuesday",
        "Wednesday",
        "Thursday",
        "Friday",
        "Saturday",
        "Sunday"
    ]
    
    var body: some View {
        
        ZStack {
            if listViewModel.items.isEmpty {
                NoItemsView()
                    .transition(AnyTransition.opacity.animation(.easeIn))
            } else { //update view to shows days of the week
                List{
                    
                    ForEach(weekdays, id: \.self) { day in
                           
                   
                    // Looks to see if the database has items to show if not then the day is hidden
                    if listViewModel.items.contains(where: {$0.day == day}){
                    
                    Text(day)
                        //ForEach(general.filter({return $0.isCompleted == true})) { item in
                        ForEach(listViewModel.items.filter({return $0.day == day})) { item in
                            if item.isCompleted == false {
                         ListRowView (item: item, day: item)
                             .onTapGesture {
                                 withAnimation(.linear) {
                                     listViewModel.updateItem(item: item)
                             }
                         }
                     }
                        
                        }
                        .onDelete(perform: listViewModel.deleteItem)
                        .onMove(perform: listViewModel.moveItem)
                        
                        ForEach(listViewModel.items.filter({return $0.day == day})) { item in
                            if item.isCompleted == true {
                         ListRowView (item: item, day: item)
                             .onTapGesture {
                                 withAnimation(.linear) {
                                     listViewModel.updateItem(item: item)
                             }
                         }
                     }
                        
                        }
                        .onDelete(perform: listViewModel.deleteItem)
                        .onMove(perform: listViewModel.moveItem)
                    }
                        
                    } // day loop close
                   
                } // list close

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
    




