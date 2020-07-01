//
//  TabBarItemView.swift
//  lupoBudget
//
//  Created by Roland Braun on 6/30/20.
//  Copyright © 2020 Roland Braun. All rights reserved.
//

import SwiftUI

struct TabBarItemView: View {
    
    let symbol: Image
    let label: String
    let forView: String
    
    @Binding var currentView: String
    
    var body: some View {
        
       VStack(spacing: 0){
                symbol
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
                     .font(.system(size: 16, weight: .light))
                    //.foregroundColor(self.currentView != forView ? Color(red: 92/255, green: 92/255, blue: 104/255) : Color.white)
                    .foregroundColor(self.currentView != forView ? Color(red: 92/255, green: 92/255, blue: 104/255) : Color.blue)
                
                Text(label)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
                    .font(.system(size: 12, weight: .light))
                    .foregroundColor(self.currentView != forView ? Color(red: 92/255, green: 92/255, blue: 104/255) : Color.blue)
                    .frame(maxWidth: .infinity)
        }
            .contentShape(Rectangle()) // makes the complete View tappable. By default only the items within the View are tappable.
        
    }
    
}

struct TabBarItemView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarItemView(symbol: Image(systemName: "house"), label: "Home", forView: "home", currentView: Binding.constant("home"))
    }
}
