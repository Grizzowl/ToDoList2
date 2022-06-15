//
//  WeekdayMenuController.swift
//  ToDoList2
//
//  Created by Grizzowl on 2022/06/14.
//

import SwiftUI

struct WeekdayMenuController: View {
    var body: some View {
        ScrollView {
            
            VStack {
                Text("🗓 Weekly Planner")
                    .font(Font.custom("Noteworthy", size: 35))
                    .fontWeight(.bold)
                    .padding(.bottom, 10)
                Text("Pick a day to add your task")
                    .padding(.bottom, 20)
                NavigationLink(
                destination: GeneralAddView(), //link to weekday view AddView()
                label: {
                    Text("General")
                        .foregroundColor(.black)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.yellow)
                        .cornerRadius(10)
                    
                })
                NavigationLink(
                destination: MondayAddView(), //link to weekday view AddView()
                label: {
                    Text("Monday")
                        .foregroundColor(.black)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .cornerRadius(10)
                    
                })
                NavigationLink(
                destination: TuesdayAddView(), //link to weekday view AddView()
                label: {
                    Text("Tuesday")
                        .foregroundColor(.black)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .cornerRadius(10)
                    
                })
                NavigationLink(
                destination: WednesdayAddView(), //link to weekday view AddView()
                label: {
                    Text("Wednesday")
                        .foregroundColor(.black)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .cornerRadius(10)
                    
                })
                NavigationLink(
                destination: ThursdayAddView(), //link to weekday view AddView()
                label: {
                    Text("Thursday")
                        .foregroundColor(.black)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .cornerRadius(10)
                    
                })
                NavigationLink(
                destination: FridayAddView(), //link to weekday view AddView()
                label: {
                    Text("Friday")
                        .foregroundColor(.black)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .cornerRadius(10)
                    
                })
                NavigationLink(
                destination: SaturdayAddView(), //link to weekday view AddView()
                label: {
                    Text("Saturday")
                        .foregroundColor(.black)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .cornerRadius(10)
                    
                })
                NavigationLink(
                destination: SundayAddView(), //link to weekday view AddView()
                label: {
                    Text("Sunday")
                        .foregroundColor(.black)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .cornerRadius(10)
                    
                })
                
                
            }
            .frame(minWidth: 400)
            .multilineTextAlignment(.center)
            .padding(50)
            
        }
    }
}

struct WeekdayMenuController_Previews: PreviewProvider {
    static var previews: some View {
        WeekdayMenuController()
            .previewInterfaceOrientation(.portrait)
    }
}
