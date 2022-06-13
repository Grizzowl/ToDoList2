//
//  WeekdayView.swift
//  ToDoList2
//
//  Created by Grizzowl on 2022/06/10.
//

import SwiftUI


struct WeekdayView: View {
    let weekday = weekdays
    
     
    // this shows the day of the week you want to add a todo item in
     var body: some View {
         NavigationView {
             List {
                 ForEach(weekday, id: \.self) { day in
                     NavigationLink(destination: chooseDestination()) {
                         Image(systemName: "calendar")
                         Text(day)
                     }.padding()
                     
                    
                 }
                 
                 .navigationTitle("Weekly Planner")
             }
            
         }
     }

@ViewBuilder
func chooseDestination() -> some View {
    
    let getDay = weekdays
    
        switch (getDay) {
            //Need to find a way to link the ForEach days with the switch case
        case ["Monday"]: MondayAddView()
        case ["Tuesday"]: TuesdayAddView()
        case ["Wednesday"]: WednesdayAddView()
        case ["Thursday"]: ThursdayAddView()
        case ["Friday"]: FridayAddView()
        case ["Saturday"]: SaturdayAddView()
        case ["Sunday"]: SundayAddView()
            default: AddView()
        }
   }
}


struct WeekdayView_Previews: PreviewProvider {
    static var previews: some View {
        WeekdayView()
    }
}

