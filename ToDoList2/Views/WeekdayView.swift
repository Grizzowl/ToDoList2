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
                     NavigationLink(destination: AddView()) {
                         Image(systemName: "calendar")
                         Text(day)
                     }.padding()
                 }
                 
                 .navigationTitle("Weekly Planner")
             }
         }
     }
}

    


struct WeekdayView_Previews: PreviewProvider {
    static var previews: some View {
        WeekdayView()
    }
}

