//
//  NewEntryView.swift
//  lupoBudget
//
//  Created by Roland Braun on 7/4/20.
//  Copyright © 2020 Roland Braun. All rights reserved.
//

import SwiftUI

struct NewStatementView: View {
    
    @Binding var showNewEntryView: Bool
    
    enum Categories: String, CaseIterable {
        case groceries = "Groceries"
        case drugstoreProducts = "Drugstore products"
        case other = "Other"
    }
    
    @State private var selectedCategoryIndex = 0
    
    @State private var selectedDate = Date()
    
    @State private var amountProxy = ""
    
    
    var amount: Double? {
        get {
            return makeDouble(fromText: amountProxy)
        }
    }
    
    var body: some View {
        
        NavigationView {
            
            Form {
                
                ZStack {
                    HStack(alignment: .firstTextBaseline) {
                        Text("€")
                            .font(Font.system(size: 60))
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 20))
                        Spacer()
                    }
                    
                    Spacer()
                    TextField("0.00", text: $amountProxy)
                        .keyboardType(.decimalPad)
                        .multilineTextAlignment(.center)
                        .font(Font.system(size: 60))
                        .textFieldStyle(PlainTextFieldStyle())
                    Spacer()
                    
                }
                    .padding()
                
                Picker(selection: $selectedCategoryIndex, label: Text("Category")) {
                    ForEach(0 ..< Categories.allCases.count) { categoryIndex in
                        Text(Categories.allCases[categoryIndex].rawValue)
                    }
                }
                
                DatePicker("Date", selection: $selectedDate, displayedComponents: [.date])
                
                HStack {
                    Spacer()
                    
                    Text("Save")
                        .onTapGesture {
                            if self.saveStatement() {
                                self.showNewEntryView = false
                            }
                    }
                        .padding(EdgeInsets(top: 7, leading: 30, bottom: 7, trailing: 30))
                        .foregroundColor(Color.blue)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.blue, lineWidth: 1)
                        )
                    
                    Spacer()
                }
            }
                .navigationBarTitle(Text("New Statement"))
                .navigationBarItems(trailing: Button(action: {
                    self.showNewEntryView = false
                }, label: {Text("Close")}))
            
        }
        
    }
    
    func makeDouble(fromText text: String) -> Double? {
        // Replace all , with .
        if let text = Double(text.replacingOccurrences(of: ",", with: ".")) {
            return text
        } else {
        return nil
        }
    }
    
    func saveStatement() -> Bool{
        return true
    }
    
    
}

struct NewEntryView_Previews: PreviewProvider {
    static var previews: some View {
        NewStatementView(showNewEntryView: Binding.constant(true))
    }
}
