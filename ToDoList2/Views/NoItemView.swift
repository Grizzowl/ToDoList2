//
//  NoItemsView.swift
//  ToDoList
//
//  Created by Grizzowl on 2022/05/20.
//

import SwiftUI

struct NoItemsView: View {
    
    @State var animate: Bool = false
    let secondaryAccentColor = Color("SecondaryAccentColor")
    
    var body: some View {
        ScrollView {
            VStack {
                Text("There are no items")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("add items you lazy fuck, and buy the pro for $69.99")
                    .padding(.bottom, 20)
                NavigationLink(
                destination: WeekdayView(), //link to weekday view AddView()
                label: {
                    Text("Add Something")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(animate ? secondaryAccentColor : Color.accentColor)
                        .cornerRadius(10)
                    
                })
                .padding(.horizontal, animate ? 30 : 50)
                .shadow(
                    color: animate ? secondaryAccentColor.opacity(0.7) :
                        Color.accentColor.opacity(0.7),
                    radius: animate ? 30 : 10,
                    x: 0,
                    y: animate ? 50 : 30
                    )
                .scaleEffect(animate ? 1.1 : 1.0)
                .offset(y: animate ? -7 : 0)
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
