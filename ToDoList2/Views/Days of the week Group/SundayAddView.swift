//
//  SundayAddView.swift
//  ToDoList2
//
//  Created by Grizzowl on 2022/06/13.
//

import SwiftUI

struct SundayAddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFieldText: String = ""
    
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type Something Here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(UIColor.secondarySystemBackground))
                .cornerRadius(10)
                
                Button(action: saveButtonPressed, label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 40)
                        .frame(maxWidth: 200)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            .padding(14)
        }
        
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("Sunday list ✍️")
                    .font(.largeTitle.bold())
                    .accessibilityAddTraits(.isHeader)
            }
        }
        
        .alert(isPresented: $showAlert, content: getAlert)
    }
    
    //find a way to get the app to read and write from the core data
    func saveButtonPressed() {
        if textIsAppropriate() {
            listViewModel.addItem(title: textFieldText, day: "Sunday")
            presentationMode.wrappedValue.dismiss()
        }
    }
    
    func textIsAppropriate() -> Bool {
        if textFieldText.count < 3 {
            alertTitle = "Your new todo list must be at least 3 characters long!🥶"
            showAlert.toggle()
            return false
        }
        return true
    }
    
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}




struct SundayAddView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                SundayAddView()
            }
            .preferredColorScheme(.light)
            .environmentObject(ListViewModel())
            
            NavigationView {
                SundayAddView()
            }
            .preferredColorScheme(.dark)
            .environmentObject(ListViewModel())
        }
        
    }
}
