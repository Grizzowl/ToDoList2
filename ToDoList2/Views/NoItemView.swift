//
//  NoItemsView.swift
//  ToDoList
//
//  Created by Grizzowl on 2022/05/20.
//

import UIKit
import SwiftUI

struct NoItemsView: View {
    
    @State var animate: Bool = false
    let secondaryAccentColor = Color("SecondaryAccentColor")
    
    
    var body: some View {
        ScrollView {
            VStack {
                Text("There are no items 📂")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 10)
                Text("➕ ADD ITEMS and buy the pro for $69.99pm")
                    .padding(.bottom, 20)
                NavigationLink(
                destination: WeekdayMenuController(), //link to weekday view 
                label: {
                    Text("Add Something")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(animate ? secondaryAccentColor : Color.accentColor)
                        .cornerRadius(10)
                    
                })
                .padding(/*.horizontal, animate ? 30 : 50*/)
                .shadow(
                    color: animate ? secondaryAccentColor.opacity(0.7) :
                        Color.accentColor.opacity(0.7),
                    radius: 10 ,
                    x: 0,
                    y: 20
                    )
                //.scaleEffect(animate ? 1.1 : 1.0)
                //.offset(y: animate ? -7 : 0)
            }
            .frame(minWidth: 400)
            .multilineTextAlignment(.center)
            .padding(40)
            .onAppear(perform: addAnimation)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    
    func addAnimation() {
        guard !animate else { return }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(
                Animation
                    .easeInOut(duration: 2.0)
                    .repeatForever()
            ) {
                animate.toggle()
            }
        }
        
    }
    
}




struct NoItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            NoItemsView()
                .navigationTitle("Home")
        }
    }
}
